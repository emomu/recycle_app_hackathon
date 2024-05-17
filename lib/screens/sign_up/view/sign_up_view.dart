import 'package:flutter/material.dart';
import 'package:recycle_app_hackathon/repo/mediaQuery.dart';
import 'package:recycle_app_hackathon/repo/myColor.dart';
import 'package:recycle_app_hackathon/screens/login/view/login_view.dart';
import 'package:recycle_app_hackathon/screens/sign_up/service/sign_up_service.dart';
import 'package:recycle_app_hackathon/widgets/button.dart';
import 'package:recycle_app_hackathon/widgets/textField.dart';

class SignUpView extends StatelessWidget with Responsive {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = getScreenHeight(context);
    double screenWidth = getScreenWidth(context);
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController rePasswordController = TextEditingController();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight / 10.2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Üye Kaydı",
                    style: TextStyle(
                        color: MyColor.lightBrown,
                        fontFamily: "Mukta",
                        fontSize: screenWidth / 12.1),
                  )
                ],
              ),
              SizedBox(
                height: screenHeight / 15,
              ),
              Container(
                width: double.maxFinite,
                height: screenHeight / 3.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyTextField(
                        textController: nameController,
                        hText: "Adınız Soyadınız",
                        suffix: null,
                        isPassword: false,
                        changedText: (text) => null),
                    MyTextField(
                        textController: emailController,
                        hText: "E-mailiniz",
                        suffix: null,
                        isPassword: false,
                        changedText: (text) => null),
                    MyTextField(
                        textController: passwordController,
                        hText: "Şifreniz",
                        suffix: Icon(Icons.remove_red_eye),
                        isPassword: true,
                        changedText: (text) => null),
                    MyTextField(
                        textController: rePasswordController,
                        hText: "Tekrar Şifreniz",
                        suffix: Icon(Icons.remove_red_eye),
                        isPassword: true,
                        changedText: (text) => null),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight / 15,
              ),
              MyButton(
                  text: "Kayıt Ol",
                  darkLightTheme: false,
                  tap: () {
                    AuthService().signUp(context,
                        name: nameController.text,
                        mail: emailController.text,
                        password: passwordController.text);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginView()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
