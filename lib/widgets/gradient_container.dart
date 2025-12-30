import 'package:flutter/material.dart';
// ignore: unused_import
import '../theme/app_theme.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final BorderRadius? radius;

  // ignore: use_key_in_widget_constructors
  const GradientContainer({
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: radius ?? BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: child,
    );
  }
}
