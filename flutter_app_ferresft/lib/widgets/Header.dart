import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/widgets/Logo.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 250,
      width: double.infinity,
      child: Center(
        child: LogoHeader(),  // Asegúrate de que el nombre del widget coincida con el definido en logo.dart
      ),
    );
  }
}
