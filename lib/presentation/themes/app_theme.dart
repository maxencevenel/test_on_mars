import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static const Color backgroundColor = Colors.white;
  static const Color scaffoldBackgroundColor = Color(0xFFF9F9F9);

  static const Color bodyTextColor = Color(0xFF909094);
  static const Color buttonColor = Color(0xFF2E66D4);

  static TextTheme textTheme = TextTheme(
    titleLarge: GoogleFonts.robotoTextTheme()
        .titleLarge!
        .copyWith(fontSize: 18, color: Colors.black),
    titleMedium:
        GoogleFonts.robotoTextTheme().titleLarge!.copyWith(color: Colors.black),
    bodyLarge: GoogleFonts.robotoTextTheme()
        .titleLarge!
        .copyWith(color: bodyTextColor),
    bodyMedium: GoogleFonts.robotoTextTheme()
        .titleLarge!
        .copyWith(color: bodyTextColor),
  );

  static ThemeData lightTheme = ThemeData().copyWith(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch(
      accentColor: const Color(0xFF13B9FF),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      titleTextStyle: textTheme.titleLarge!.copyWith(
        color: Colors.black,
      ),
    ),
    scaffoldBackgroundColor: backgroundColor,
    primaryColor: Colors.white,
    textTheme: textTheme,
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.robotoTextTheme().titleLarge!.copyWith(
                color: Colors.white,
                fontSize: 14,
              ),
        ),
      ),
    ),
  );

  static ThemeData darkTheme = lightTheme.copyWith(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black.withOpacity(0.8),
      foregroundColor: Colors.white,
      titleTextStyle: textTheme.titleLarge!.copyWith(
        color: Colors.white,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
    ),
  );
}
