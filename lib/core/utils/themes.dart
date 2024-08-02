import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';

abstract class MyThemes
{
  static  ThemeData darkTheme=ThemeData.dark().copyWith(
      scaffoldBackgroundColor:kPrimaryColor,
      primaryIconTheme: const IconThemeData(color: Colors.white),
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
  );
}