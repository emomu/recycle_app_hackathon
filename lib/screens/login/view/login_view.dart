import 'package:flutter/material.dart';
import 'package:recycle_app_hackathon/repo/mediaQuery.dart';
import 'package:recycle_app_hackathon/repo/myColor.dart';
import 'package:recycle_app_hackathon/screens/sign_up/view/sign_up_view.dart';
import 'package:recycle_app_hackathon/widgets/button.dart';
import 'package:recycle_app_hackathon/widgets/textField.dart';

class LoginView extends StatelessWidget with Responsive {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = getScreenHeight(context);
    double screenWidth = getScreenWidth(context);
    TextEditingController emailLoginController = TextEditingController();
    TextEditingController passwordLoginController = TextEditingController();
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: screenHeight / 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Üye Girişi",
                style: TextStyle(
                    color: MyColor.darkBrown,
                    fontSize: screenWidth / 12.1,
                    fontFamily: 'Mukta'),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight / 10,
          ),
          Container(
            width: double.maxFinite,
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyTextField(
                    textController: emailLoginController,
                    hText: "E-mailinizi girin",
                    suffix: Icon(Icons.clear),
                    isPassword: false,
                    changedText: (text) => null),
                MyTextField(
                    textController: passwordLoginController,
                    hText: "Şifrenizi Girin",
                    suffix: Icon(Icons.remove_red_eye),
                    isPassword: true,
                    changedText: (text) => null),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight / 16,
          ),
          MyButton(
              text: "Giriş Yap",
              darkLightTheme: true,
              tap: () => Text("Giriş Yap")),
          SizedBox(
            height: screenHeight / 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bir Hesabınız Yok Mu?",
                style: TextStyle(fontFamily: "Mukta", fontSize: 16),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignUpView()));
                  },
                  child: Text(
                    "Üye Ol",
                    style: TextStyle(fontSize: 16, color: MyColor.lightBrown),
                  ))
            ],
          )
        ],
      )),
    );
  }
}
