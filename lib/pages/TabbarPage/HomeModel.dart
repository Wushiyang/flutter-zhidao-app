/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-29 10:23:25
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-29 10:27:12
 */
import 'dart:async';
import 'package:flutter/material.dart';

class HomeModel {
  Completer<TabController> homeNavBarTabBarController = Completer();
  final recommendViewTabbarList = [
    {
      'text': '全站',
    },
    {
      'text': '直播',
    },
    {
      'text': '电竞',
    },
    {'text': '健康'},
  ];

  void setHomeNavBarTabBarController(TabController controller) {
    homeNavBarTabBarController.complete(Future(() => controller));
  }
}
