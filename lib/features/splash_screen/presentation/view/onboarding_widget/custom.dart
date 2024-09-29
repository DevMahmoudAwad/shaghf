import 'package:flutter/material.dart';
import 'package:shaghf/core/utils/style.dart';
class Custom extends StatelessWidget {
  const Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "auth");
            },
              child: Text(
                "Skip",
                style: Styles.textStyle17.copyWith(color: Colors.white)),
              )
        ],
      ),
    );
  }
}
