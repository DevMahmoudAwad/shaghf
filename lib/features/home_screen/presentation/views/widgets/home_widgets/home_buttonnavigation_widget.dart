import 'package:flutter/material.dart';

class HomeButtonnavigationWidget extends StatelessWidget {
  const HomeButtonnavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 28, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: Image.asset("images/image14.png", width: 30, height: 40)),
          IconButton(
              onPressed: () {},
              icon: Image.asset("images/image15.png", width: 30, height: 40)),
          IconButton(
              onPressed: () {},
              icon: Image.asset("images/image13.png", width: 52, height: 52)),
          IconButton(
              onPressed: () {},
              icon: Image.asset("images/image16.png", width: 30, height: 40)),
          IconButton(
              onPressed: () {},
              icon: Image.asset("images/image17.png", width: 30, height: 40)),
        ],
      ),
    );
  }
}
