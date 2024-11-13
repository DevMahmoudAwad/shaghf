import 'package:flutter/material.dart';

import 'package:shaghf/features/offers/presentation/views/widgets/offer_box.dart';

class OfferScroll extends StatelessWidget {
   OfferScroll({super.key});
  final List<String> offers = [
    'images/FB_IMG_1731203034668.jpg',
    'images/FB_IMG_1731203052668.jpg',
    'images/FB_IMG_1731203095853.jpg',
    'images/FB_IMG_1731203138042.jpg',
    'images/FB_IMG_1731203490281.jpg',
    'images/FB_IMG_1731203581673.jpg',
    'images/FB_IMG_1731203581673.jpg',
    'images/offers.jpg'


  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .9,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: offers.length,
          itemBuilder: (context, index) {
            return  OfferBox(offers: offers[index]);
          }),
    );
  }
}
