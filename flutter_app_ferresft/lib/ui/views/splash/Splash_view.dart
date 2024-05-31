import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/ui/views/login/Login_view.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(const LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.primaryColor,
      body: const Center(
        child: Text(
          'Logo',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
