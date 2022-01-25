/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-24 17:44:46
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-25 16:22:15
 */
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_zhidao_app/presenters/BottomTabbarPresenter/BottomTabbarPresenter.dart';

class RoutesManager {
  static const String initialRoute = '/home';

  static late final RoutesManager _instance = RoutesManager();

  static RoutesManager getInstance() => _instance;

  static final routeBuilders = {
    '/': (context, {arguments}) => BottomTabBarPresenter(arguments),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final String name = settings.name ?? '';
    final dynamic arguments = settings.arguments;
    late final Widget Function(dynamic, {dynamic arguments}) routeBuilder;
    if (routeBuilders[name] != null) {
      routeBuilder =
          routeBuilders[name] as Widget Function(dynamic, {dynamic arguments});
      return MaterialPageRoute(
          builder: (context) => routeBuilder(context, arguments: arguments));
    }
  }

  Future navigateTo(BuildContext context, String path, {dynamic params}) {
    return Navigator.pushNamed(context, path, arguments: params);
  }

  void navigateBack(BuildContext context, {dynamic result}) {
    Navigator.pop(context, result);
  }

  Future redirectTo(BuildContext context, String path,
      {dynamic result, dynamic params}) {
    return Navigator.popAndPushNamed(context, path,
        result: result, arguments: params);
  }

  void reLaunch(BuildContext context, String path, {dynamic params}) {
    return Navigator.popUntil(context, ModalRoute.withName('/'));
  }
}
