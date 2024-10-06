import 'package:flutter/material.dart';

class HomeButtonWidget extends StatelessWidget {
  const HomeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "Membership",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            width: 130,
            height: 48,
            decoration: BoxDecoration(
                color: Color.fromRGBO(240, 76, 41, 0.9),
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Birthday",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            width: 130,
            height: 48,
            decoration: BoxDecoration(
                color: Color.fromRGBO(240, 76, 41, 0.9),
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Photo session",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            width: 130,
            height: 48,
            decoration: BoxDecoration(
                color: Color.fromRGBO(240, 76, 41, 0.9),
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
