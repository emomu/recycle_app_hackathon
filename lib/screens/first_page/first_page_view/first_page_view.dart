import 'package:flutter/material.dart';
import 'package:recycle_app_hackathon/repo/mediaQuery.dart';
import 'package:recycle_app_hackathon/repo/myColor.dart';
import 'package:recycle_app_hackathon/screens/login/view/login_view.dart';
import 'package:recycle_app_hackathon/screens/sign_up/view/sign_up_view.dart';
import 'package:recycle_app_hackathon/widgets/button.dart';
import 'package:recycle_app_hackathon/widgets/myTextWidget.dart';

class FirstPageView extends StatelessWidget with Responsive {
  FirstPageView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = getScreenHeight(context);
    double screenWidth = getScreenWidth(context);
    return Scaffold(
      body: Center(
        child: Column(children: [
          SizedBox(
            height: screenHeight / 9.7,
          ),
          MyTextWidget(
              fontSize: screenWidth / 11,
              color: MyColor.lightBrown,
              text: "Küçük Adımlar"),
          MyTextWidget(
              fontSize: screenWidth / 9,
              color: MyColor.darkBrown,
              text: "Büyük Değişimler"),
          SizedBox(
            height: screenHeight / 13.6,
          ),
          Image.asset(
            "assets/images/firstPageBody.png",
            width: screenWidth / 1.2,
          ),
          SizedBox(
            height: screenHeight / 12,
          ),
          MyButton(
              text: "Giriş Yap",
              darkLightTheme: true,
              tap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginView()))),
          SizedBox(
            height: screenHeight / 60,
          ),
          MyButton(
              text: "Kayıt Ol",
              darkLightTheme: false,
              tap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (builder) => SignUpView())))
        ]),
      ),
    );
  }
}
