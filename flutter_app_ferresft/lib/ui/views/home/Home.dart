import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/widgets/TabPage.dart';
// import 'package:flutter_app_ferresft/ui/views/splash/Splash_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabPage(),
    );
  }
}

