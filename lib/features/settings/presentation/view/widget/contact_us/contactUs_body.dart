import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghf/core/utils/app_router.dart';

class ContactUsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, right: 25, left: 25, bottom: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.KSettingPage);
                  },
                  child: Icon(Icons.arrow_back, color: Color(0xff111111)),
                ),
                Spacer(),
                const Text(
                  "Contact Us",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111111),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildContactItem(
                  icon: Icons.phone,
                  text: '015557992',
                  color: Colors.green,
                ),
                SizedBox(height: 24,),
                buildContactItem(
                  faIcon: FontAwesomeIcons.facebook,
                  text: 'Shaghaf Co-working space',
                  color: Colors.blue,
                ),
                SizedBox(height: 24,),
                buildContactItem(
                  faIcon: FontAwesomeIcons.google,
                  text: 'shagaf@gmail.com',
                ),
                SizedBox(height: 24,),
                buildContactItem(
                  faIcon: FontAwesomeIcons.instagram,
                  text: 'shagaf@gmail.com',
                  color: Colors.purple,
                ),
                SizedBox(height: 24,),
                buildContactItem(
                  faIcon: FontAwesomeIcons.snapchat,
                  text: 'shagaf@gmail.com',
                  color: Colors.yellow,
                ),
                SizedBox(height: 24,),
                buildContactItem(
                  faIcon: FontAwesomeIcons.tiktok,
                  text: 'shagaf@gmail.com',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContactItem({IconData? icon, IconData? faIcon, required String text, Color? color}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, color: color ?? Colors.black),
            SizedBox(width: 16),
          ] else if (faIcon != null) ...[
            FaIcon(faIcon, color: color ?? Colors.black),
            SizedBox(width: 16),
          ],
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
