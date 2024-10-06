import 'package:flutter/material.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/home_adverts_item_wedgit.dart';

class HomeAdvertsListWidget extends StatelessWidget {
  const HomeAdvertsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return HomeAdvertsItemWedgit();
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
