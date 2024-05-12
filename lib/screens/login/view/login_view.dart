import 'package:flutter/material.dart';
import 'package:recycle_app_hackathon/repo/mediaQuery.dart';
import 'package:recycle_app_hackathon/repo/myColor.dart';

class LoginView extends StatelessWidget with Responsive {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = getScreenHeight(context);
    double screenWidth = getScreenWidth(context);
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Row(
            children: [
              Text(
                "Üye Girişi",
                style: TextStyle(
                    color: MyColor.darkBrown,
                    fontSize: screenWidth / 12.1,
                    fontFamily: 'Mukta'),
              )
            ],
          )
        ],
      )),
    );
  }
}
