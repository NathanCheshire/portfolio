import 'package:flutter/cupertino.dart';

class PortfoliPageRoute extends PageRouteBuilder {
  final Widget widget;

  PortfoliPageRoute({required this.widget})
      : super(
            transitionDuration: Duration(milliseconds: 1200),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget widget) {
              animation = CurvedAnimation(
                  parent: animation, curve: Curves.elasticInOut);

              return ScaleTransition(
                scale: animation,
                child: widget,
                alignment: Alignment.center,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return widget;
            });
}
