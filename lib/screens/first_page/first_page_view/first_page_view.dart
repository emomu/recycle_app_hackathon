import 'package:flutter/material.dart';
import 'package:recycle_app_hackathon/repo/mediaQuery.dart';
import 'package:recycle_app_hackathon/repo/myColor.dart';
import 'package:recycle_app_hackathon/screens/sign_up/view/sign_up_view.dart';
import 'package:recycle_app_hackathon/widgets/button.dart';

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
          Container(
            width: double.maxFinite,
            height: screenHeight / 6.9,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Küçük Adımlar",
                      style: TextStyle(
                          color: MyColor.lightBrown,
                          fontSize: 40,
                          fontFamily: 'Mukta'),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Büyük Değişimler",
                      style: TextStyle(
                          color: MyColor.darkBrown,
                          fontSize: 45,
                          fontFamily: 'Mukta'),
                    )
                  ],
                ),
              ],
            ),
          ),
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
              tap: () => print("Giriş Yap")),
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
