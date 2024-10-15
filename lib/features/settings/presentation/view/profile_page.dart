import 'package:flutter/material.dart';
import 'package:shaghf/features/settings/presentation/view/widget/profile/profile_body.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileBody(),
    );
  }
}
