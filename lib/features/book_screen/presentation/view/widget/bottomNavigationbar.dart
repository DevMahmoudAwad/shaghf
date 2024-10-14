import 'package:flutter/material.dart';

class HomeButtonNavigationWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) x;

  const HomeButtonNavigationWidget({
    Key? key,
    required this.currentIndex,
    required this.x,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => x(0),
            icon: Image.asset("images/image14.png", width: 30, height: 40),
          ),
          IconButton(
            onPressed: () => x(1),
            icon: Image.asset("images/image15.png", width: 30, height: 40),
          ),
          IconButton(
            onPressed: () => x(2),
            icon: Image.asset("images/image13.png", width: 52, height: 52),
          ),
          IconButton(
            onPressed: () => x(3),
            icon: Image.asset("images/image16.png", width: 30, height: 40),
          ),
          IconButton(
            onPressed: () => x(4),
            icon: Image.asset("images/image17.png", width: 30, height: 40),
          ),
        ],
      ),
    );
  }
}