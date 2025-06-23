// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final double borderRadius;
  final bool showBorder;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  RoundedContainer({
    required this.child,
    this.width = 50.0,
    this.height = 70.0,
    this.color = Colors.white,
    this.borderRadius = 0.0,
    this.showBorder = false,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
        border: showBorder
            ? Border.all(
                color: Colors.green, // Change the border color as needed
                width: 1.0, // Adjust the border width as needed
              )
            : null,
      ),
      child: child,
    );
  }
}

class DefaultButton extends StatelessWidget {
  Widget buttonWidget;
  Function() function;
  double width;
  Color backgroundColor;
  bool isUpperCase;
  double radius;
  DefaultButton({
    super.key,
    required this.buttonWidget,
    required this.function,
    this.width = double.infinity,
    this.backgroundColor = Colors.blue,
    this.isUpperCase = true,
    this.radius = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: MaterialButton(
        onPressed: function,
        child: buttonWidget,
      ),
    );
  }
}
