import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final Color? backgorundColor;

  const RoundedContainer({
    this.radius = 20,
    this.backgorundColor,
    required this.child,
    super.key,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        decoration: BoxDecoration(
            color: backgorundColor ?? context.appColors.roundedLayoutBackground,
            borderRadius: BorderRadius.circular(radius)),
        child: child);
  }
}
