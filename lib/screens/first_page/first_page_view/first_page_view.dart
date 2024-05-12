import 'package:flutter/material.dart';
import 'package:recycle_app_hackathon/repo/mediaQuery.dart';

class FirstPageView extends StatelessWidget with Responsive {
  FirstPageView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = getScreenHeight(context);
    double screenWidth = getScreenWidth(context);
    return Scaffold(
      body: Center(
        child: Column(children: []),
      ),
    );
  }
}
