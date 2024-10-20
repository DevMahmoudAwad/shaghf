import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghf/core/utils/app_router.dart';
import 'package:shaghf/features/birthday_screen/presentation/views/widgets/birthday_button_widget.dart';
import 'package:shaghf/features/birthday_screen/presentation/views/widgets/birthday_cakes1_widget.dart';
import 'package:shaghf/features/birthday_screen/presentation/views/widgets/birthday_cakes2_widget.dart';
import 'package:shaghf/features/birthday_screen/presentation/views/widgets/birthday_cakes3_widget.dart';
import 'package:shaghf/features/birthday_screen/presentation/views/widgets/birthday_decoration2_widget.dart';
import 'package:shaghf/features/birthday_screen/presentation/views/widgets/birthday_decoration_widget.dart';

class BirthdayPage extends StatefulWidget {
  const BirthdayPage({super.key});

  @override
  State<BirthdayPage> createState() => _BirthdayPageState();
}

class _BirthdayPageState extends State<BirthdayPage> {
  final int numberOfDots;
  final double lineHeight;
  final Color dotColor;
  final double dotSize;

  _BirthdayPageState({
    this.numberOfDots = 3,
    this.lineHeight = 60.0,
    this.dotColor = Colors.red,
    this.dotSize = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.KHomePage);
          },
          icon: Icon(Icons.arrow_back_outlined),
        ),
        title: Text("Birthday"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 50),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Shadow color
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 5), // Shadow position
                  ),
                ],
              ),
              width: 450,
              height: 62,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(right: 13, left: 15, top: 8),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(numberOfDots * 2 - 5, (index) {
                        if (index % 2 == 0) {
                          // This is a dot
                          return Container(
                            width: dotSize,
                            height: dotSize,
                            decoration: BoxDecoration(
                              color: dotColor,
                              shape: BoxShape.circle,
                            ),
                          );
                        } else {
                          // This is a space between the dots (dotted line)
                          return SizedBox(
                            height: lineHeight,
                            child: Center(
                              child: Container(
                                width: 2.0,
                                height: lineHeight,
                                color: dotColor.withOpacity(0.5),
                              ),
                            ),
                          );
                        }
                      }),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "You can buy them from any where else without any \n cost or services"),
                  ],
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 32, bottom: 20),
            child: Text(
              "Cakes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          BirthdayCakes1Widget(),
          BirthdayCakes2Widget(),
          BirthdayCakes3Widget(),
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 24, bottom: 20),
            child: Text(
              "Decoration",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          BirthdayDecorationWidget(),
          BirthdayDecoration2Widget(),
          BirthdayButtonWidget()
        ],
      ),
    );
  }
}
