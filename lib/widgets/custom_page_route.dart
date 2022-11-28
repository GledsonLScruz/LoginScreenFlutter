import 'package:flutter/material.dart';

class SlidePageRoute<T> extends MaterialPageRoute<T> {
  SlidePageRoute({required WidgetBuilder builder}) : super(builder: builder);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
          position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
              .animate(animation),
          child: child);
}
