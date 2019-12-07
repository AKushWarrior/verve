//  This Source Code Form is subject to the terms of the Mozilla Public
//  License, v. 2.0. If a copy of the MPL was not distributed with this
//  file, You can obtain one at http://mozilla.org/MPL/2.0/.

library verve;

import 'package:flutter/material.dart';

///Default VerveTextTheme...
const VerveTextTheme = TextTheme(
  display4: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
  ),
  display3: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5),
  display2: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0),
  display1: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25),
  headline: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0),
  title: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15),
  subhead: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15),
  body2: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25),
  body1: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5),
  button: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.75),
  caption: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4),
  subtitle: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1),
  overline: TextStyle(
      fontFamily: 'Metropolis',
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5),
);

/// Uses a VerveTheme to reform a ThemeData with relevant colors.
///
/// Also updates ThemeData to use MaterialDesign 2018 specification for
/// text, as opposed to the current 2014 specification.
ThemeData verveSwatch({@required VerveTheme theme, ThemeData base}) {
  if (base == null) base = ThemeData();
  Color bg;
  Color accent;
  Color main;
  switch (theme) {
    case VerveTheme.amati:
      {
        main = Color(0xff45757D);
        accent = Color(0xff27455C);
        bg = Color(0xffffffff);
        base = base.copyWith(
          primaryColorBrightness: Brightness.dark,
          accentColorBrightness: Brightness.dark,
          brightness: Brightness.light,
        );
      }
      break;
    case VerveTheme.blue:
      {
        main = Color(0xff2787B7);
        accent = Color(0xff024669);
        bg = Color(0xffffffff);
        base = base.copyWith(
          primaryColorBrightness: Brightness.dark,
          accentColorBrightness: Brightness.dark,
          brightness: Brightness.light,
        );
      }
      break;
    case VerveTheme.purple:
      {
        main = Color(0xff73305B);
        accent = Color(0xff272640);
        bg = Color(0xffffffff);
        base = base.copyWith(
          primaryColorBrightness: Brightness.dark,
          accentColorBrightness: Brightness.dark,
          brightness: Brightness.light,
        );
      }
      break;
    case VerveTheme.venice:
      {
        main = Color(0xff0396A6);
        accent = Color(0xffF25E5E);
        bg = Color(0xffffffff);
        base = base.copyWith(
          primaryColorBrightness: Brightness.dark,
          accentColorBrightness: Brightness.dark,
          brightness: Brightness.light,
        );
      }
      break;
    case VerveTheme.twilight:
      {
        main = Color(0xff192853);
        accent = Color(0xffffffff);
        bg = Color(0xff0C1A3D);
        base = base.copyWith(
          primaryColorBrightness: Brightness.light,
          accentColorBrightness: Brightness.dark,
          brightness: Brightness.dark,
        );
      }
      break;
    case VerveTheme.beach:
      {
        main = Color(0xff046380);
        accent = Color(0xffE6E2AF);
        bg = Color(0xffffffff);
        base = base.copyWith(
          primaryColorBrightness: Brightness.light,
          accentColorBrightness: Brightness.dark,
          brightness: Brightness.light,
        );
      }
      break;
    case VerveTheme.darkMode:
      {
        return ThemeData.dark().copyWith(
          textTheme: VerveTextTheme,
        );
      }
      break;
    case VerveTheme.garden:
      {
        main = Color(0xff4BB5C1);
        accent = Color(0xffB5E655);
        bg = Color(0xffffffff);
        base = base.copyWith(
          primaryColorBrightness: Brightness.light,
          accentColorBrightness: Brightness.light,
          brightness: Brightness.light,
        );
      }
      break;
    case VerveTheme.navy:
      {
        main = Color(0xff2C3E50);
        accent = Color(0xffFC4349);
        bg = Color(0xffffffff);
        base = base.copyWith(
          primaryColorBrightness: Brightness.dark,
          accentColorBrightness: Brightness.dark,
          brightness: Brightness.light,
        );
      }
      break;
    case VerveTheme.sepia:
      {
        main = Color(0xff1A9481);
        accent = Color(0xff9BCC93);
        bg = Color(0xffffffff);
        base = base.copyWith(
          primaryColorBrightness: Brightness.dark,
          accentColorBrightness: Brightness.light,
          brightness: Brightness.light,
        );
      }
      break;
    case VerveTheme.material:
      {
        return ThemeData.light().copyWith(
          textTheme: VerveTextTheme,
        );
      }
      break;
  }
  base = base.copyWith(
      primaryColor: main,
      accentColor: accent,
      backgroundColor: bg,
      scaffoldBackgroundColor: bg,
      buttonColor: accent,
      buttonTheme: ButtonThemeData(
        buttonColor: accent,
        hoverColor: main,
        splashColor: main,
        textTheme: ButtonTextTheme.normal,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
      cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.5)),
        color: bg,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: accent,
        foregroundColor: bg,
        splashColor: main,
        hoverColor: main,
      ),
      appBarTheme: AppBarTheme(brightness: base.primaryColorBrightness),
      textTheme: VerveTextTheme);
  return base;
}

///Different themes available for [verveSwatch].
enum VerveTheme {
  material,
  amati,
  venice,
  blue,
  purple,
  twilight,
  beach,
  darkMode,
  garden,
  navy,
  sepia,
}
