import 'package:bokly_app/const/constant.dart';
import 'package:bokly_app/core/utils/app_routers.dart';
import 'package:bokly_app/core/utils/assets.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontroller;
  late Animation<Offset> slider;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slider: slider),
      ],
    );
  }

  void initSlidingAnimation() {
    animationcontroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    slider = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationcontroller);
    animationcontroller.forward();
  }

  void navigateToHome() {
    Future.delayed(kTransetionDuration, () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fadeIn, duration: kTransetionDuration);
      GoRouter.of(context).push(AppRouters.kHomeView);
    });
  }
}
