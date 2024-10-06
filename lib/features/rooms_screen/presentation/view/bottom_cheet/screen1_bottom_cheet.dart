import 'package:flutter/material.dart';
import 'package:shaghf/features/rooms_screen/presentation/view/bottom_cheet/buildAmenity.dart';

class Screen1BottomCheet extends StatelessWidget {
  const Screen1BottomCheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 370,
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
              buildAmenityRow(
                  Icons.print,
                  'Printer, Scanner and photocopier\n'
                  'printing, photocopier and scanning services'),
              buildAmenityRow(
                  Icons.wifi,
                  'Wi-Fi\n'
                  'free high speed Wifi'),
              buildAmenityRow(
                  Icons.local_cafe,
                  'Free coffee\n'
                  'free coffee and tea provided'),
              buildAmenityRow(
                  Icons.videocam,
                  'Video Conf\n'
                  'video conferencing setup avaliable'),
              buildAmenityRow(
                  Icons.connected_tv,
                  'LED screen\n'
                  'LED screen'),
              buildAmenityRow(
                  Icons.people_rounded,
                  'Meeting room access\n'
                  'Meeting room access')
            ],
          ),
        ],
      ),
    );
  }
}
