import 'package:flutter/material.dart';
import 'package:shaghf/features/rooms_screen/presentation/view/bottom_cheet/buildAmenity.dart';

class Screen1BottomCheet extends StatelessWidget {
  const Screen1BottomCheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        height: 460,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Amenities',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1B1B1B)),
            ),
            SizedBox(height: 16),
            Column(
              children: [
                buildAmenityRow("Interactive Coding Labs: Hands-on coding exercises to practice Flutter development."),
                buildAmenityRow("Comprehensive Learning: Master both frontend and backend development technologies."),
                buildAmenityRow("Advanced AI Techniques: Learn cutting-edge AI algorithms and tools."),
                buildAmenityRow("Core Programming Concepts: Learn the fundamentals of C++ and object-oriented programming."),
                buildAmenityRow("Marketing Strategies: Learn how to create and implement digital marketing strategies."),
                buildAmenityRow("Personalized Coaching: Get personalized guidance and support for your Flutter development journey."),
                buildAmenityRow("Hands-on Coding: Learn how to write and implement code in Flutter."),
                buildAmenityRow("Design Fundamentals: Learn the basics of UI and UX design principles."),
              ],
            )
          ],
        ),
      ),
    );
  }
}
