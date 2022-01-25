/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-24 15:48:42
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-25 14:51:58
 */
import 'package:flutter/material.dart';
import './routes.dart';

abstract class BasePresenter extends StatefulWidget {
  final Map<String, dynamic>? arguments;

  const BasePresenter(this.arguments, {Key? key}) : super(key: key);

  BasePresenterState getState();

  @override
  // ignore: no_logic_in_create_state
  BasePresenterState createState() => getState();
}

abstract class BasePresenterState<T extends BasePresenter> extends State<T> {
  final RoutesManager routesManager = RoutesManager.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: buildBody(context),
        bottomNavigationBar: buildBottomNavigationBar(context));
  }

  /// 默认导航栏
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(title: const Text('首页'));
  }

  /// 默认body
  Widget buildBody(BuildContext context);

  /// 默认body
  Widget? buildBottomNavigationBar(BuildContext context) {}
}
