import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter_animator/flutter_animator.dart';
// import 'package:particles_flutter/particles_flutter.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = MediaQueryData();
  late double screenWidth;
  late double screenHeight;
  late double blockSizeHorizontal;
  late double blockSizeVertical;

  late double _safeAreaHorizontal;
  late double _safeAreaVertical;
  late double safeBlockHorizontal;
  late double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

class STDesign {
  // Images
  final logo_image_light = Image.asset("assets/images/Sterling Tech.png");
  final ST_bgimage_light = Image.asset("assets/images/st_bgimage_light.png");

  //  Colors
  final Color ST_col4 = Color(0xFF383838);
  final Color ST_col3 = Color(0xFF5F6B74);
  final Color ST_col2 = Color(0xFF484343);
  final Color ST_col1 = Color(0xFFEEEEEE);

  // var circularParticle = CircularParticle(
  //   key: UniqueKey(),
  //   awayRadius: 50,
  //   numberOfParticles: 175,
  //   speedOfParticles: 1,
  //   height: MediaQuery.of(context).size.height * 1,
  //   width: MediaQuery.of(context).size.width * 1,
  //   onTapAnimation: true,
  //   particleColor: Colors.white.withAlpha(150),
  //   awayAnimationDuration: Duration(milliseconds: 600),
  //   maxParticleSize: 8,
  //   isRandSize: true,
  //   isRandomColor: true,
  //   randColorList: [Colors.black, Colors.yellow],
  //   // randColorList: [STDesign().ST_col2, STDesign().ST_col3],
  //   awayAnimationCurve: Curves.linearToEaseOut,
  //   enableHover: true,
  //   hoverColor: Colors.white,
  //   hoverRadius: 20,
  //   connectDots: true, //not recommended
  // );

//  Flutter Theme Data
  ThemeData ST_theme_light() {
    return ThemeData(
      primarySwatch: Colors.grey,
      colorScheme: ColorScheme(
          primary: ST_col1,
          primaryVariant: ST_col1,
          secondary: ST_col2,
          secondaryVariant: ST_col2,
          surface: ST_col3,
          background: ST_col1,
          error: ST_col4,
          onPrimary: ST_col2,
          onSecondary: ST_col1,
          onSurface: ST_col1,
          onBackground: ST_col2,
          onError: Colors.red,
          brightness: Brightness.light),
      appBarTheme: AppBarTheme(
        backgroundColor: ST_col1,
      ),
      fontFamily: "Good Times",
      textTheme: ST_lightheme_text_eng(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      iconTheme: IconThemeData(color: ST_col2),
    );
  }

  //  Flutter Theme Data
  ThemeData ST_theme_dark() {
    return ThemeData(
      primarySwatch: Colors.grey,
      colorScheme: ColorScheme(
          primary: ST_col2,
          primaryVariant: ST_col2,
          secondary: ST_col1,
          secondaryVariant: ST_col1,
          surface: ST_col3,
          background: ST_col1,
          error: ST_col4,
          onPrimary: ST_col1,
          onSecondary: ST_col2,
          onSurface: ST_col2,
          onBackground: ST_col2,
          onError: Colors.red,
          brightness: Brightness.dark),
      appBarTheme: AppBarTheme(
        backgroundColor: ST_col2,
      ),
      fontFamily: "Good Times",
      textTheme: ST_darktheme_text_eng(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      iconTheme: IconThemeData(color: ST_col1),
    );
  }

//  Flutter Text Theme
  TextTheme ST_lightheme_text_eng() {
    return TextTheme(
        headline1: TextStyle(
            color: ST_col2,
            fontSize: 30,
            fontFamily: "Good Times",
            shadows: [
              Shadow(
                blurRadius: 2.0,
                color: Colors.black,
                offset: Offset(0, 1.0),
              )
            ]),
        bodyText1: TextStyle(
          color: ST_col2,
          fontSize: 20,
          fontFamily: "Good Times",
        ),
        bodyText2: TextStyle(
          color: ST_col2,
          fontSize: 20,
          fontFamily: "Barlow",
        ),
        // currently against dark BG
        headline2: TextStyle(shadows: [
          Shadow(
            blurRadius: 3.0,
            color: Colors.grey,
            offset: Offset(0, 1.7),
          ),
        ], color: ST_col2, fontFamily: "Good Times", fontSize: 30),
        headline3: TextStyle(shadows: [
          Shadow(
            blurRadius: 10.0,
            color: Colors.grey,
            offset: Offset(5.0, 5.0),
          ),
        ], color: ST_col2, fontFamily: "Pacifico", fontSize: 20));
  }

  TextTheme ST_darktheme_text_eng() {
    return TextTheme(
        headline1: TextStyle(
            color: ST_col1,
            fontSize: 30,
            fontFamily: "Good Times",
            shadows: [
              Shadow(
                blurRadius: 2.0,
                color: Colors.black,
                offset: Offset(0, 1.0),
              )
            ]),
        bodyText1: TextStyle(
          color: ST_col1,
          fontSize: 20,
          fontFamily: "Good Times",
        ),
        bodyText2: TextStyle(
          color: ST_col2,
          fontSize: 20,
          fontFamily: "Barlow",
        ),
        headline2: TextStyle(shadows: [
          Shadow(
            blurRadius: 3.0,
            color: Colors.grey,
            offset: Offset(0, 1.7),
          ),
        ], color: ST_col1, fontFamily: "Good Times", fontSize: 30),
        headline3: TextStyle(shadows: [
          Shadow(
            blurRadius: 10.0,
            color: Colors.grey,
            offset: Offset(5.0, 5.0),
          ),
        ], color: ST_col1, fontFamily: "Pacifico", fontSize: 20));
  }
}
