import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';
import 'package:flutter_app_ferresft/widgets/BottomNavBar.dart';
import 'package:get/get.dart';

class BtnAddCart extends StatelessWidget {
  const BtnAddCart({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final btnCardWidth = screenSize.width * 0.37;

    return Container(
        width: btnCardWidth,
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            color: GlobalColors.primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: TextButton(
          onPressed: () => { Get.to(const BottomNavbar())}, // EDIT
          child: const Text(
            'AGREGAR',
            style: TextStyle(
                height: 1.5,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ));
  }
}