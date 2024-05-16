import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  double fontSize;
  Color color;
  String text;
  MyTextWidget(
      {super.key,
      required this.fontSize,
      required this.color,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$text",
                style: TextStyle(
                    fontFamily: "Mukta", color: color, fontSize: fontSize),
              )
            ],
          ),
        ],
      ),
    );
  }
}
