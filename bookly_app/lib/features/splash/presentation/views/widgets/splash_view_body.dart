import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/fading_logo.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/fading_scaling_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> textFadeAnimation,
      textScaleAnimation,
      logoFadeAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadingLogo(
            animationController: animationController,
            logoFadeAnimation: logoFadeAnimation),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: AnimatedBuilder(
            animation: animationController,
            builder: (context, _) {
              return FadingScalingText(
                textFadeAnimation: textFadeAnimation,
                textScaleAnimation: textScaleAnimation,
              );
            },
          ),
        )
      ],
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    textFadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    textScaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut),
    );
    logoFadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
