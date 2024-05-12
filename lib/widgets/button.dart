import 'package:flutter/material.dart';
import 'package:recycle_app_hackathon/repo/myColor.dart';

class MyButton extends StatelessWidget {
  String text;
  //True ise Light buton değilse dark buton
  bool darkLightTheme;
  VoidCallback tap;

  MyButton(
      {super.key,
      required this.text,
      required this.darkLightTheme,
      required this.tap});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: tap,
      child: Container(
        alignment: Alignment.center,
        width: screenWidth / 1.2,
        height: screenHeight / 17.55,
        decoration: BoxDecoration(
          color: darkLightTheme ? MyColor.darkGreen : MyColor.greenYellow,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          "$text",
          style: TextStyle(
              fontSize: screenWidth / 23,
              color: Colors.white,
              fontFamily: "Prompt"),
        ),
      ),
    );
  }
}
