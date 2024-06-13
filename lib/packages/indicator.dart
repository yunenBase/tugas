import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int count;
  final int currentIndex;
  final Color? activeColor;
  final Color? backgroundColor;
  final double radius;
  final double padding;
  final Color? borderColor;
  final double borderWidth;
  final double borderPadding;

  const Indicator({
    Key? key,
    required this.count,
    required this.currentIndex,
    this.activeColor,
    this.backgroundColor,
    this.radius = 3.0,
    this.padding = 4.0,
    this.borderColor,
    this.borderWidth = 1.0,
    this.borderPadding = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        bool isActive = index == currentIndex;
        return Container(
          margin: EdgeInsets.symmetric(horizontal: padding / 2),
          width: radius * 2 +
              borderPadding * 2 +
              (isActive ? (borderWidth * 2) : 0),
          height: radius * 2 +
              borderPadding * 2 +
              (isActive ? (borderWidth * 2) : 0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: isActive
                ? Border.all(
                    color: borderColor ?? Colors.white, width: borderWidth)
                : null,
          ),
          child: Center(
            child: Container(
              width: radius * 2,
              height: radius * 2,
              decoration: BoxDecoration(
                color: isActive ? activeColor : backgroundColor,
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.all(borderPadding),
            ),
          ),
        );
      }),
    );
  }
}
