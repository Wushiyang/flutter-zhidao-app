/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-29 11:06:03
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-29 14:27:45
 */
import 'package:flutter/material.dart';
import 'dart:ui';

class Fit {
  static MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
  static final double _width = mediaQuery.size.width;
  static final double _height = mediaQuery.size.height;
  static final double _topbarH = mediaQuery.padding.top;
  static final double _botbarH = mediaQuery.padding.bottom;
  static final double _pixelRatio = mediaQuery.devicePixelRatio;
  static double? _ratio;
  static init(int number) {
    // ignore: unnecessary_type_check
    int uiwidth = number is int ? number : 750;
    _ratio = _width / uiwidth;
  }

  static double px(number) {
    if (_ratio == null) {
      Fit.init(750);
    }
    return number * _ratio;
  }

  static onepx() {
    return 1 / _pixelRatio;
  }

  static screenW() {
    return _width;
  }

  static screenH() {
    return _height;
  }

  static padTopH() {
    return _topbarH;
  }

  static padBotH() {
    return _botbarH;
  }
}
