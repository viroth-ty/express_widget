import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';

class CircleRevealRouteBuilder<T> extends PageRoute<T> {
  final Offset? offset;
  final RoutePageBuilder pageBuilder;
  final PageTransitionsBuilder matchingBuilder = const CupertinoPageTransitionsBuilder();

  CircleRevealRouteBuilder({
    this.offset = const Offset(0, 0),
    required this.pageBuilder,
  });

  @override
  Color get barrierColor => Colors.white;

  @override
  String get barrierLabel => "";

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return pageBuilder(context, animation, secondaryAnimation);
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 250);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return CircularRevealAnimation(
      animation: animation,
      centerOffset: offset,
      child: child,
    );
  }
}
