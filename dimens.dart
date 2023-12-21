import 'dart:math';

import 'package:flutter/material.dart';

class Dimens {
  Dimens._();

  static const double baseMobileWidth = 350;
  static const double baseMobileHeight = 640;
  static const double baselineWidthTablet = 768;
  static const double baselineHeightTablet = 1024;

  static double keyboardHeight(BuildContext context) => scaleH(50, context);

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
    // return WidgetsBinding.instance.window.physicalSize.height /
    //     window.devicePixelRatio;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
    // return WidgetsBinding.instance.window.physicalSize.width /
    // window.devicePixelRatio;
  }
}

double scaleW(double value, BuildContext context) {
  double _baseWidth = Dimens.baseMobileWidth;
  if (isTablet(context)) {
    _baseWidth = Dimens.baselineWidthTablet;
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      // _baseWidth = 1024;
      _baseWidth =
          max(Dimens.screenHeight(context), Dimens.screenWidth(context));
      // return value;
      // return scaleH(value, context);
    }
  }
  return value * ((Dimens.screenWidth(context)) / _baseWidth);
}

double scaleH(double value, BuildContext context) {
  double _baseHeight = Dimens.baseMobileHeight;
  if (isTablet(context)) {
    _baseHeight = Dimens.baselineHeightTablet;
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      // _baseHeight = 1000;
      _baseHeight =
          max(Dimens.screenHeight(context), Dimens.screenWidth(context));
      // return value;
      // return scaleW(value, context);
    }
  }
  return value * ((Dimens.screenHeight(context)) / _baseHeight);
}

double scaleR(double value, BuildContext context) {
  double _baseHeight = Dimens.baseMobileHeight;
  if (isTablet(context)) {
    _baseHeight = Dimens.baselineHeightTablet;
  }
  return value * ((Dimens.screenHeight(context)) / _baseHeight);
}

bool isTablet(BuildContext context) {
  final _size = MediaQuery.of(context).size.shortestSide;

  return _size > 520;
}

bool isLandscapeInTablet(BuildContext context) {
  if (!isTablet(context)) return false;

  final orientation = MediaQuery.of(context).orientation;

  return orientation == Orientation.landscape;
}
