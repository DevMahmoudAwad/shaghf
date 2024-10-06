import 'package:flutter/material.dart';
import 'package:shaghf/core/widgets/image_widget.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/widgets/login_widgets/textform_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      "images/image3.png",
                      width: 24,
                      height: 24,
                    )),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageWidget(),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const TextformWidget(),
        ],
      ),
    );
  }
}
