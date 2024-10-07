import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghf/core/utils/app_router.dart';

class HomeImageWedget extends StatelessWidget {
  const HomeImageWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.KHomeDrawerPage);
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Image.asset(
                      "images/image5.png",
                      height: 24,
                      width: 24,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "images/image6.png",
                      height: 24,
                      width: 24,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 88, left: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/image7.png",
                        height: 27,
                        width: 96,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Text(
                    "Delightful open air",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF)),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Container(
                    color: Color.fromRGBO(240, 76, 41, 0.52),
                    width: 52,
                    height: 22,
                    child: Row(
                      children: [
                        Image.asset(
                          "images/image8.png",
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "4.7",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("images/image4.png"))),
    );
  }
}
