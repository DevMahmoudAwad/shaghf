import 'package:flutter/material.dart';
import 'package:shaghf/features/splash_screen/presentation/view/onboarding_widget/OnboardingBody.dart';
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff146356),
          body: OnboardingBody(),
      ),
    );
  }
}
