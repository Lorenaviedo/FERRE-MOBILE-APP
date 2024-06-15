import 'package:flutter/material.dart';
import '../utils/global.colors.dart';

class TextFieldCustom extends StatelessWidget {
  final TextInputType type;
  final IconData icon;
  final Color appColor = GlobalColors.primaryColor;
  final bool pass;
  final String label;
  final String hint;
  final double radius = 6;
  TextFieldCustom(
      {required this.type,
      required this.icon,
      super.key,
      required this.label,
      required this.hint,
      this.pass = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: type,
        obscureText: pass,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: GlobalColors.primaryColor,
          ),
          labelText: label,
          hintText: hint,
          filled: true,
          fillColor: GlobalColors.thirdColor,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: GlobalColors.borderColor4),
              borderRadius: BorderRadius.all(Radius.circular(radius))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: GlobalColors.borderColor4),
              borderRadius: BorderRadius.all(Radius.circular(radius))),
        ));
  }
}
