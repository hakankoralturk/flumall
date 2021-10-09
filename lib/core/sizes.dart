import 'package:flutter/material.dart';

class Sizes {
  static MediaQueryData _mediaQueryData = MediaQueryData();
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double defaultSize = 0;
  static Orientation orientation = Orientation.portrait;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getScreeenHeightRatio(double inputHeight) {
  double screnHeight = Sizes.screenHeight;
  // 812: Tasarımda kullanılan yükseklik
  return (inputHeight / 812.0) * screnHeight;
}

double getScreenWidthRatio(double inputWidth) {
  double screenWidth = Sizes.screenWidth;
  // 375: Tasarımda kullanılan yükseklik
  return (inputWidth / 375.0) * screenWidth;
}
