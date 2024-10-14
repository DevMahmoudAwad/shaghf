import 'package:flutter/material.dart';

class MembershipButtonWidget extends StatelessWidget {
  const MembershipButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 400),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          "Next",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        width: 342,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xff20473E)),
      ),
    );
  }
}
