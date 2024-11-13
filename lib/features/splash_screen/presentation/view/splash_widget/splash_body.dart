import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghf/core/utils/app_router.dart';
import 'package:shaghf/core/utils/assets.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      // Navigate to the onboarding view
      GoRouter.of(context).push(AppRouter.KOnboardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffBF1522),
      alignment: Alignment.center,
      child: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("images/tsquare.jpg"),
          ),
        ),
      ),
    );
  }
}
