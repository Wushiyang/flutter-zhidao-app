/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-25 10:20:58
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-25 16:56:56
 */
import 'package:flutter/material.dart';
import 'package:flutter_zhidao_app/presenters/BottomTabBarPresenter/home/NavbarView.dart';
import '../BottomTabBarPresenter.dart';

class HomeView extends StatefulWidget {
  final BottomTabBarPresenter presenter;

  const HomeView(this.presenter, {Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavbarView(),
        Center(
          child: Text('首页测试'),
        )
      ],
    );
  }
}
