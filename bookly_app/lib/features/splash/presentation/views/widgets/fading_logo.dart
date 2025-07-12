import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FadingLogo extends StatelessWidget {
  const FadingLogo({
    super.key,
    required this.animationController,
    required this.logoFadeAnimation,
  });

  final AnimationController animationController;
  final Animation<double> logoFadeAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return Opacity(
            opacity: logoFadeAnimation.value,
            child: SvgPicture.asset(
              AssetData.logo,
              width: 300,
            ),
          );
        });
  }
}
