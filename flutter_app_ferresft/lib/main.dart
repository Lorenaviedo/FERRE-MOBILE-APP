import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_app_ferresft/ui/views/splash/Splash_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
