import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app_ferresft/utils/Global.colors.dart';

class AppThemes {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    buttonTheme: ButtonThemeData(
      buttonColor: GlobalColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: GlobalColors.btnColor1,
        foregroundColor: GlobalColors.thirdColor,
      )
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: GlobalColors.secondaryColor,
      brightness: Brightness.dark,
      shadow: GlobalColors.bgColor
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.merriweather().fontFamily
      ),
      titleMedium: GoogleFonts.merriweather(
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
      titleSmall: GoogleFonts.merriweather(
        fontSize: 20,
        fontStyle: FontStyle.italic
      ),
      titleLarge: GoogleFonts.merriweather(
        fontSize: 40,
        fontStyle: FontStyle.italic,
      ),
      bodyMedium: GoogleFonts.merriweather(),
      displaySmall: GoogleFonts.pacifico(),
    )
  );

  static ThemeData lightTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 8.0,
        shadowColor: Colors.green,
        minimumSize: const Size(double.infinity, 56.0),
        backgroundColor: Colors.green,
        disabledBackgroundColor: const Color.fromARGB(255, 175, 76, 117).withOpacity(0.4),
        disabledForegroundColor: GlobalColors.thirdColor,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      background: GlobalColors.thirdColor,
      seedColor: GlobalColors.primaryColor,
      brightness: Brightness.light,
      shadow: GlobalColors.thirdColor
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: GlobalColors.btnColor1,
      shadowColor: GlobalColors.secondaryColor,
      elevation: 0.0,
      centerTitle: false,
      scrolledUnderElevation: 10.0,
      toolbarHeight: 72.0,
      titleTextStyle:const TextStyle(
        color: Colors.red, 
        fontSize: 20.0, 
        fontWeight: FontWeight.normal
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40)),
      ),
      actionsIconTheme: const IconThemeData(color: Colors.red, size: 16.0)
    ),
  );

  static ThemeData lightTheme2 = ThemeData(
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.bebasNeue().fontFamily),
      titleMedium: GoogleFonts.bebasNeue(
        fontSize: 30,
        fontStyle: FontStyle.normal,
      ),
      titleSmall: GoogleFonts.bebasNeue(
        fontSize: 20,
        fontStyle: FontStyle.normal,
      ),
      titleLarge: GoogleFonts.bebasNeue(
        fontSize: 40,
        fontStyle: FontStyle.italic,
      ),
      bodyMedium: GoogleFonts.merriweather(),
      displaySmall: GoogleFonts.pacifico(),
      bodyLarge: TextStyle(fontSize: 18, color: GlobalColors.thirdColor),
    ),
    appBarTheme: AppBarTheme(
      color: GlobalColors.secondaryColor,
      iconTheme: IconThemeData(color: GlobalColors.thirdColor),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: GlobalColors.secondaryColor,
      brightness: Brightness.light,
    ),
  );

  static ThemeData darkTheme2 = ThemeData(
    textTheme: TextTheme(
      displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.damion().fontFamily),
      titleMedium: GoogleFonts.damion(
        fontSize: 30,
        fontStyle: FontStyle.normal,
      ),
      titleSmall: GoogleFonts.damion(
        fontSize: 20,
        fontStyle: FontStyle.normal,
      ),
      titleLarge: GoogleFonts.damion(
        fontSize: 40,
        fontStyle: FontStyle.italic,
      ),
      bodyMedium: GoogleFonts.merriweather(),
      displaySmall: GoogleFonts.pacifico(),
      bodyLarge: TextStyle(fontSize: 18, color: GlobalColors.thirdColor),
    ),
    appBarTheme: AppBarTheme(
      color: GlobalColors.primaryColor,
      iconTheme: IconThemeData(color: GlobalColors.thirdColor),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: GlobalColors.primaryColor,
      brightness: Brightness.dark,
    ),
  );
}
