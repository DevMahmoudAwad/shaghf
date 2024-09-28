import 'package:flutter/material.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/login_widgets/image_widget.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/login_widgets/textform_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageWidget(),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          TextformWidget(),
        ],
      ),
    );
  }
}
