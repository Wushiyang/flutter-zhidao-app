/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-24 17:44:46
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-24 18:08:12
 */
import 'package:flutter/material.dart';
import './presenters/TabsPresenter.dart';

class RouteManager {
  static late RouteManager _instance;

  static RouteManager getInstance() {
    _instance ??= RouteManager();
    return _instance;
  }

  final routeBuilders = {
    '/': (context, {arguments}) => TabsPresenter(arguments)
  };

  onGenerateRoute(RouteSettings settings) {
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
}
