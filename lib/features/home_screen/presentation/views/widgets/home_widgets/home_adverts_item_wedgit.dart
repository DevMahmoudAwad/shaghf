import 'package:flutter/material.dart';

class HomeAdvertsItemWedgit extends StatelessWidget {
  const HomeAdvertsItemWedgit({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 21, top: 12),
      child: Container(
        height: 108,
        width: 243,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("images/image9.png"))),
      ),
    );
  }
}
