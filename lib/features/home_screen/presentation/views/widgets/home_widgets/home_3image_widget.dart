import 'package:flutter/material.dart';

class Home3imageWidget extends StatelessWidget {
  const Home3imageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "images/image10.png",
          width: 342,
          height: 200,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/image11.png",
              width: 163,
              height: 200,
            ),
            SizedBox(
              width: 16,
            ),
            Image.asset(
              "images/image12.png",
              width: 163,
              height: 200,
            )
          ],
        )
      ],
    );
  }
}
