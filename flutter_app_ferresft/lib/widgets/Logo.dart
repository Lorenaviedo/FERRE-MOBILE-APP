import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: MediaQuery.of(context).size.width * 0.38,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(20),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/logo.png', 
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
