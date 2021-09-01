import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/EnumHolders.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyColors.dart';

class SlideAndFade extends StatefulWidget {
  final int second;
  final Curve curve;
  final TransitionType transitionType;

  SlideAndFade(
      {required this.second,
      required this.curve,
      required this.transitionType,
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
        ? Offset(-1, 0.0)
        : transitionType == TransitionType.RightToLeft
            ? Offset(1, 0)
            : transitionType == TransitionType.TopToBottom
                ? Offset(0, 1)
                : Offset(0, -1),
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
          child: Text(
            "NekroDev",
            style: Fonts.gRubik(24, MyColor.blackFont, FontWeight.bold),
          ),
          //child: FlutterLogo(size: 50.0),
        ),
      ),
    );
  }
}
