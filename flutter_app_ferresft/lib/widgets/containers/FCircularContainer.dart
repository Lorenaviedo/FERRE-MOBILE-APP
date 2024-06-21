import 'package:flutter/material.dart';

class FCircularContainer extends StatelessWidget {
  const FCircularContainer({
    super.key,
    this.child,
    this.width=400,
    this.height=400,
    this.radius=400,
    this.padding,
    this.margin,
    this.backgroundColor = Colors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  // final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      // padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}