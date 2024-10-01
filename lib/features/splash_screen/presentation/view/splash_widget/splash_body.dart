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
      //Navigator.pushNamed(context, "s1");
      GoRouter.of(context).push(AppRouter.KOnBoardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.splash),
          ),
        ),
      ),
    );
  }
}
