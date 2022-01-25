/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-24 16:40:56
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-25 17:23:18
 */
import 'package:flutter/material.dart';
import 'package:flutter_zhidao_app/BasePresenter.dart';
import './home/HomeView.dart';
import './HomeModel.dart';
import 'concern/ConcernView.dart';
import 'message/MessageView.dart';
import 'mine/mineView.dart';

class BottomTabBarPresenter extends BasePresenter {
  const BottomTabBarPresenter(arguments, {Key? key})
      : super(arguments, key: key);

  @override
  getState() {
    return _BottomTabBarPresenterState();
  }
}

class _BottomTabBarPresenterState
    extends BasePresenterState<BottomTabBarPresenter> {
  late int _currentIndex;
  late Widget _currentPage;

  static const List barList = [
    {
      'icon': Icon(Icons.home),
      'activeIcon': Icon(Icons.home, color: Colors.blue),
      'label': '首页',
      'view': HomeView()
    },
    {
      'icon': Icon(Icons.attachment),
      'activeIcon': Icon(Icons.attachment, color: Colors.blue),
      'label': '关注',
      'view': ConcernView()
    },
    {
      'icon': Icon(Icons.message),
      'activeIcon': Icon(Icons.message, color: Colors.blue),
      'label': '消息',
      'view': MessageView()
    },
    {
      'icon': Icon(Icons.account_box),
      'activeIcon': Icon(Icons.account_box, color: Colors.blue),
      'label': '我的',
      'view': mineView()
    },
  ];

  final HomeModel homeModel = HomeModel();

  _BottomTabBarPresenterState() : super() {
    changeTab(0);
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {}

  @override
  Widget buildBody(BuildContext context) {
    return _currentPage;
  }

  @override
  Widget buildBottomNavigationBar(BuildContext context) {
    List<BottomNavigationBarItem> items = barList
        .map((e) => BottomNavigationBarItem(
            icon: e['icon'], activeIcon: e['active'], label: e['label']))
        .toList();
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            changeTab(index);
          });
        },
        items: items);
  }

  void changeTab(index) {
    _currentIndex = index;
    _currentPage = barList[_currentIndex]['view'];
  }
}
