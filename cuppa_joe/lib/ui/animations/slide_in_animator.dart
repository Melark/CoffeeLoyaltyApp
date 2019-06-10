import 'dart:async';

import 'package:flutter/material.dart';

class SlideInAnimator extends StatefulWidget {
final Widget child;
final int delay;

  SlideInAnimator({@required this.child,this.delay,Key key}) : super(key: key);

  _SlideInAnimatorState createState() => _SlideInAnimatorState();
}

class _SlideInAnimatorState extends State<SlideInAnimator> with TickerProviderStateMixin{
  AnimationController _animationController;
  Animation<Offset> _animationOffset;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _animationController);
    _animationOffset =
        Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
            .animate(curve);

    if (widget.delay == null) {
      _animationController.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay), () {
        _animationController.forward();
      });
    }
  }

 @override
  void dispose() {
    super.dispose();
     _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: SlideTransition(
        position: _animationOffset,
        child: widget.child,
      ),
      opacity: _animationController,
    );
  }
}