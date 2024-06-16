import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 300,
      left: MediaQuery.of(context).size.width * 0.38,
      child: Container(
        height: 500,
        width: 500,
        decoration: BoxDecoration(
            //color: Colors.black,
            borderRadius: BorderRadius.circular(0),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/logo.png', 
            width: 400,
            height: 300,
          ),
        ),
      ),
    );
  }
}
