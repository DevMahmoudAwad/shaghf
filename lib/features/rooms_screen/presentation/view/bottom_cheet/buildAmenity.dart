import 'package:flutter/material.dart';
Widget buildAmenityRow(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      children: [
        Icon(icon, color: Color(0xff20473E)),
        const SizedBox(width: 8),
        Text(text),
      ],
    ),
  );
}
