import 'package:flutter/material.dart';
import 'package:recycle_app_hackathon/screens/splash_screen/splash_screen_view/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 78, 75, 83)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
