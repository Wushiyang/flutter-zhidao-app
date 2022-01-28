/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-26 09:15:27
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-28 17:22:33
 */
import 'dart:async';

import 'package:flutter_zhidao_app/baseViewModel.dart';
import 'package:flutter_zhidao_app/pages/TabbarPage/TabbarPageViewModel.dart';
import 'package:flutter/material.dart';
import './home/HomeView.dart';
import 'home/NavBarView.dart' as homenav;
import 'concern/ConcernView.dart';
import 'message/MessageView.dart';
import 'mine/mineView.dart';

class TabbarPageViewModel extends BaseViewModel {
  TabbarPageViewModel() : super() {
    changeTab(0);
  }
  late int currentIndex;
  Completer<TabController> homeNavBarTabBarController = Completer();
  // late Completer homeNavBarTabBarController

  // HomeTabController

  final List barList = [
    {
      'icon': const Icon(Icons.home),
      'activeIcon': const Icon(Icons.home, color: Colors.blue),
      'label': '首页',
      'nav': homenav.NavBarView(),
      'view': HomeView()
    },
    {
      'icon': const Icon(Icons.attachment),
      'activeIcon': const Icon(Icons.attachment, color: Colors.blue),
      'label': '关注',
      'nav': homenav.NavBarView(),
      'view': ConcernView()
    },
    {
      'icon': const Icon(Icons.message),
      'activeIcon': const Icon(Icons.message, color: Colors.blue),
      'label': '消息',
      'nav': homenav.NavBarView(),
      'view': MessageView()
    },
    {
      'icon': const Icon(Icons.account_box),
      'activeIcon': const Icon(Icons.account_box, color: Colors.blue),
      'label': '我的',
      'nav': homenav.NavBarView(),
      'view': mineView()
    },
  ];

  void changeTab(index) {
    currentIndex = index;
    notifyListeners();
  }

  void setHomeNavBarTabBarController(TabController controller) {
    homeNavBarTabBarController.complete(Future(() => controller));
  }
}
