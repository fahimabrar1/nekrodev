import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/EnumHolders.dart';
import 'package:nekrodev/Pages/HomePage.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class SlideAndFade extends StatefulWidget {
  final int second;
  final Curve curve;
  final TransitionType transitionType;
  final Widget child;
  final double offsetRange;
  final double? IntervalStart;
  final double? IntervalEnd;
  final GlobalKey animatedBoxKey;
  final bool? playNow;

  SlideAndFade(
      {required this.animatedBoxKey,
      this.playNow,
      required this.child,
      required this.second,
      required this.curve,
      this.IntervalStart,
      this.IntervalEnd,
      required this.transitionType,
      required this.offsetRange,
      Key? key})
      : super(key: key);

  @override
  _SlideAndFadeState createState() =>
      _SlideAndFadeState(second, curve, transitionType);
}

class _SlideAndFadeState extends State<SlideAndFade>
    with SingleTickerProviderStateMixin {
  final double animationToHappenOffset = 100;
  late AutoScrollController? ListViewController;
  late GlobalKey? gKey;
  final int second;

  final Curve curve;
  final TransitionType transitionType;
  _SlideAndFadeState(this.second, this.curve, this.transitionType);

  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: second),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: transitionType == TransitionType.LeftToRight
          ? Offset(-widget.offsetRange, 0.0)
          : transitionType == TransitionType.RightToLeft
              ? Offset(widget.offsetRange, 0)
              : transitionType == TransitionType.TopToBottom
                  ? Offset(0, -widget.offsetRange)
                  : Offset(0, widget.offsetRange),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: (widget.IntervalStart != null && widget.IntervalEnd != null)
            ? Interval(widget.IntervalStart!, widget.IntervalEnd!, curve: curve)
            : curve,
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.playNow != null && widget.playNow == true) {
      _controller..forward();
    } else {
      ListViewController = ListViewInherited.getAutoScrollController(context);
      gKey = ListViewInherited.getGlobalKey(context);
      ListViewController!.addListener(() {
        updateAnimation();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _offsetAnimation,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: widget.child,
          //child: FlutterLogo(size: 50.0),
        ),
      ),
    );
  }

  updateAnimation() {
    if (_controller.status != AnimationStatus.dismissed) {
      return; // animation already in progress/finished
    }

    RenderObject? listViewObject = gKey!.currentContext!.findRenderObject();
    RenderObject? animatedBoxObject =
        widget.animatedBoxKey.currentContext?.findRenderObject();
    if (listViewObject == null || animatedBoxObject == null) return;

    final listViewHeight = listViewObject.paintBounds.height;
    final animatedObjectTop =
        animatedBoxObject.getTransformTo(listViewObject).getTranslation().y;
    // print("Animated Box Height: $animatedObjectTop!");
    // print("ListView: $listViewHeight!");

    final bool animatedBoxVisible =
        (animatedObjectTop + animationToHappenOffset < listViewHeight);

    if (animatedBoxVisible) {
      // start animation
      _controller..forward();
    }

    return;
  }
}
