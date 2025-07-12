import 'package:flutter/material.dart';

class FadingScalingText extends StatelessWidget {
  const FadingScalingText({
    super.key,
    required this.textFadeAnimation,
    required this.textScaleAnimation,
  });

  final Animation<double> textFadeAnimation;
  final Animation<double> textScaleAnimation;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: textFadeAnimation.value,
      child: Transform.scale(
        scale: textScaleAnimation.value,
        child: Text(
          'Read Free Books',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.yellow.shade100,
            // fontFamily: AssetData.font,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
