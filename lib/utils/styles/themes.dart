import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sport_app/utils/styles/colors.dart';

/// NAME         SIZE  WEIGHT  SPACING
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyText1)
/// body2        14.0  regular  0.25  (bodyText2)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5

ThemeData ligthTheme = ThemeData(
  scaffoldBackgroundColor: CbackgroundLigthApp,
  primarySwatch: Colors.purple,
  textTheme: TextTheme(
    headline6: TextStyle(color: CBlack, fontSize: 20),
    subtitle2: TextStyle(color: CBlackFoncy, fontSize: 13),
    headline4:
        TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: CBlack),
    headline5: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: CBlack,
        letterSpacing: 1.2),
    caption:
        TextStyle(color: CBlack, fontSize: 13, fontWeight: FontWeight.w500),
    bodyText1: TextStyle(
      color: CBlack,
      fontSize: 16,
    ),
    bodyText2:
        TextStyle(fontWeight: FontWeight.normal, color: Cwhite, fontSize: 16),
    subtitle1:
        TextStyle(fontWeight: FontWeight.normal, color: CBlack, fontSize: 16),
  ),
);

ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primarySwatch: Colors.purple,
    appBarTheme: AppBarTheme(
      backgroundColor: CbackgroundDarkApp,
      backwardsCompatibility: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: CbackgroundDarkApp,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textTheme: TextTheme(
      headline6: TextStyle(color: Cwhite, fontSize: 20),
      headline4:
          TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Cwhite),
      headline5: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Cwhite,
          letterSpacing: 1.2),
      subtitle2: TextStyle(color: Cwhite, fontSize: 13),
      bodyText1: TextStyle(
        color: CGrey,
        fontSize: 16,
      ),
      caption:
          TextStyle(color: Cwhite, fontSize: 13, fontWeight: FontWeight.w500),
      bodyText2:
          TextStyle(fontWeight: FontWeight.normal, color: Cwhite, fontSize: 16),
      subtitle1:
          TextStyle(fontWeight: FontWeight.normal, color: CBlack, fontSize: 16),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(elevation: 0.0));
