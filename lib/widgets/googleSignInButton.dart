import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  VoidCallback tap;

  GoogleSignInButton({super.key, required this.tap});

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
          border: Border.all(width: 1.0, color: Colors.grey),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/googleIcon.png",
              width: screenWidth / 12,
            ),
            SizedBox(
              width: screenWidth / 45,
            ),
            Text(
              "Google ile Giriş Yap",
              style:
                  TextStyle(fontSize: screenWidth / 23, fontFamily: "Prompt"),
            ),
          ],
        ),
      ),
    );
  }
}
