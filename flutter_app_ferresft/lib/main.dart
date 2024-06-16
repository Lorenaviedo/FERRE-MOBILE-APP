import 'package:flutter/material.dart';
// import 'package:flutter_app_ferresft/ui/views/home/Home_Screen.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';
import 'package:get/get.dart';
import 'package:flutter_app_ferresft/ui/views/splash/Splash_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Ferre App',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
        scaffoldBackgroundColor: GlobalColors.thirdColor
      ),
      home: const SplashView(),
      //home: const HomeScreen()
    );
  }
}
