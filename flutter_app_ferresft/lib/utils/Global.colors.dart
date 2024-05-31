import 'dart:ui';

import 'package:hexcolor/hexcolor.dart';

class GlobalColors {
  // Main colors: black, white, orange(FFBC04)
  static HexColor primaryColor = HexColor('#FFBC04');
  static HexColor secondaryColor = HexColor('#000000');
  static HexColor thirdColor = HexColor('#FFFFFF');

  // Text colors with degradation:
  static Color textColor1 = const Color.fromRGBO(0, 0, 0, 0.4);
  static Color textColor2 = const Color.fromRGBO(0, 0, 0, 0.6);

  // Icon colors:
  static Color iconColor1 = const Color.fromRGBO(255, 188, 4, 0.06);
  static Color iconColorSolid1 = const Color.fromRGBO(232, 39, 39, 1);
  static Color iconColorSolid2 = const Color.fromRGBO(27, 143, 46, 1);

  // Btns colors:
  static HexColor btnColor1 = HexColor('FFBB00');

  // Borders colors:
  static Color borderColor1 = const Color.fromRGBO(0, 0, 0, 0.29);
  static Color borderColor5 = const Color.fromRGBO(0, 0, 0, 0.3);
  static Color borderColor2 = const Color.fromRGBO(217, 217, 217, 0.8667);
  static Color borderColor3 = const Color.fromRGBO(217, 217, 217, 0.12);
  static Color borderColor4 = const Color.fromRGBO(174, 170, 170, 1);
  static Color borderColor6 = const Color.fromRGBO(255, 188, 4, 0.21);

  // BGs colors:
  static HexColor bgContainerColor = HexColor('#AEAAAA');
  static Color bgColor = Color.fromARGB(53, 198, 196, 192);
}
