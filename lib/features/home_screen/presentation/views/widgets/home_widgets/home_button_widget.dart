import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghf/core/utils/app_router.dart';

class HomeButtonWidget extends StatelessWidget {
  const HomeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: (){
                GoRouter.of(context).push(AppRouter.KMembershipPage);
              },
              child: Text(
                "Membership",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            width: 110,
            height: 48,
            decoration: BoxDecoration(
                color: Color.fromRGBO(240, 76, 41, 0.9),
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: (){
                GoRouter.of(context).push(AppRouter.KBirthdayPage);
              },
              child: Text(
                "Birthday",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            width: 110,
            height: 48,
            decoration: BoxDecoration(
                color: Color.fromRGBO(240, 76, 41, 0.9),
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: (){
                GoRouter.of(context).push(AppRouter.KPhotosessionPage);

              },
              child: Text(
                "Photo session",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            width: 110,
            height: 48,
            decoration: BoxDecoration(
                color: Color.fromRGBO(240, 76, 41, 0.9),
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
