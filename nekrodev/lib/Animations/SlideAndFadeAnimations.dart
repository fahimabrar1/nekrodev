import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/EnumHolders.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyColors.dart';

class SlideAndFade extends StatefulWidget {
  final int second;
  final Curve curve;
  final TransitionType transitionType;
  final Widget child;
  final double offsetRange;

  SlideAndFade(
      {required this.child,
      required this.second,
      required this.curve,
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
  final int second;
  final Curve curve;
  final TransitionType transitionType;
  _SlideAndFadeState(this.second, this.curve, this.transitionType);

  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: second),
    vsync: this,
  )..forward();

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: transitionType == TransitionType.LeftToRight
        ? Offset(-widget.offsetRange, 0.0)
        : transitionType == TransitionType.RightToLeft
            ? Offset(widget.offsetRange, 0)
            : transitionType == TransitionType.TopToBottom
                ? Offset(0, widget.offsetRange)
                : Offset(0, -widget.offsetRange),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: curve,
  ));

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
}
