import 'package:flutter/material.dart';
import 'package:recycle_app_hackathon/repo/myColor.dart';

class MyTextField extends StatelessWidget {
  TextEditingController textController;
  String hText;
  void Function(String) changedText;
  var suffix;
  bool isPassword;
  MyTextField(
      {super.key,
      required this.textController,
      required this.hText,
      required this.suffix,
      required this.isPassword,
      required this.changedText});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight / 17.55,
      width: screenWidth / 1.2,
      child: TextField(
        onChanged: changedText,
        obscureText: isPassword,
        textAlign: TextAlign.start,
        cursorColor: MyColor.darkGreen,
        controller: textController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
          hintText: hText,
          hintStyle:
              TextStyle(fontFamily: "Prompt-Regular", color: Colors.grey[400]),
          suffixIcon: suffix,
          suffixStyle: TextStyle(color: Colors.grey[400]),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
