
import 'package:flutter/material.dart';
import 'package:shaghf/features/offers/presentation/views/widgets/event_box.dart';

class EventScroll extends StatelessWidget {
  const EventScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .9,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: 8,
          itemBuilder: (context, index) {
            return EventBox();
          }),
    );
  }
}
