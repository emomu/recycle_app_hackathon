import 'package:flutter/material.dart';
import 'package:recycle_app_hackathon/repo/mediaQuery.dart';
import 'package:recycle_app_hackathon/repo/myColor.dart';
import 'package:recycle_app_hackathon/screens/login/view/login_view.dart';
import 'package:recycle_app_hackathon/widgets/button.dart';
import 'package:recycle_app_hackathon/widgets/myTextWidget.dart';

class CongratsPageView extends StatelessWidget with Responsive {
  CongratsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = getScreenHeight(context);
    double screenWidth = getScreenWidth(context);
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: screenHeight / 8.1,
          ),
          MyTextWidget(
              fontSize: screenWidth / 8,
              color: MyColor.darkBrown,
              text: "Tebrikler"),
          MyTextWidget(
              fontSize: screenWidth / 11,
              color: MyColor.lightBrown,
              text: "Kaydınız Oluşturuldu"),
          SizedBox(
            height: screenHeight / 45,
          ),
          Image.asset(
            "assets/images/congratsPageBody.png",
            width: screenWidth / 1.1,
          ),
          SizedBox(
            height: screenHeight / 20,
          ),
          MyButton(
              text: "Giriş Yap",
              darkLightTheme: true,
              tap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginView())))
        ],
      )),
    );
  }
}
