import 'package:flutter/material.dart';

class BirthdayButtonWidget extends StatelessWidget {
  const BirthdayButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 24),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 27),
          child: Row(
            children: [
              Text(
                "Loading",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                width: 250,
              ),
              Text(
                "EGP 600.0",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )
            ],
          ),
        ),
        width: 450,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xff20473E)),
      ),
    );
  }
}
