import 'package:flutter/material.dart';

import 'package:shaghf/features/offers/presentation/views/widgets/offer_box.dart';

class OfferScroll extends StatelessWidget {
  const OfferScroll({super.key});

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
          itemCount: 8,
          itemBuilder: (context, index) {
            return const OfferBox();
          }),
    );
  }
}
