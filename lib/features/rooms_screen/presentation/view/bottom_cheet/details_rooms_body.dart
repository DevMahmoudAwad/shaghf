import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghf/core/utils/app_router.dart';
import 'package:shaghf/features/rooms_screen/presentation/view/bottom_cheet/buildAmenity.dart';
import 'package:shaghf/features/rooms_screen/presentation/view/bottom_cheet/transport_between_cheet.dart';

class RoomPageBody extends StatelessWidget {
  const RoomPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [

                  Image.asset(
                    "images/picroom.png",
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              GoRouter.of(context).push(AppRouter.RoomsPath);
                            },
                            child: Icon(Icons.arrow_back, color: Colors.black),
                          ),
                          Text(
                            "Training Room",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.favorite_border, color: Colors.red),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print("Roxy button pressed");
                      },
                      icon: Icon(Icons.location_pin, color: Colors.white),
                      label: Text("Roxy",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF04C29),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32),
                  topLeft: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Training Room',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffF04C29),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.chair, color: Color(0xffF04C29)),
                      const SizedBox(width: 5),
                      Text(
                        '30 Seats',
                        style: TextStyle(fontSize: 14, color: Color(0xff515151)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333)),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    'Amenities',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffF04C29),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: [
                      buildAmenityRow(Icons.print, 'Printer, Scanner and photocopier'),
                      buildAmenityRow(Icons.wifi, 'Wi-Fi'),
                      buildAmenityRow(Icons.local_cafe, 'Free coffee'),
                      buildAmenityRow(Icons.videocam, 'Video Conf'),
                      buildAmenityRow(Icons.connected_tv, 'LED screen'),
                    ],
                  ),

                  InkWell(
                    onTap: () {
                      Transport(context, 1);
                    },
                    child: Center(
                      child: Icon(
                        Icons.keyboard_double_arrow_down,
                        color: Color(0xff20473E),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  Row(
                    children: [
                      Icon(Icons.location_on, color: Color(0xffF04C29)),
                      const SizedBox(width: 8),
                      Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF04C29),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Image.asset("images/map.png", fit: BoxFit.fill),
                  ),
                  const SizedBox(height: 8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '100.0 EGP/Day',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffF04C29),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Transport(context, 2);
                        },
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xffF04C29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.KBookScreenView);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffF04C29),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        ),
                        child: Text('Select Date',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
