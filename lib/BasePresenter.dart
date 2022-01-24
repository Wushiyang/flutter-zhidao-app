/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-24 15:48:42
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-24 18:08:20
 */
import 'package:flutter/material.dart';
import './routes.dart';

abstract class BasePresenter extends StatefulWidget {
  const BasePresenter({Key? key}) : super(key: key);

  BasePresenterState getState();

  @override
  // ignore: no_logic_in_create_state
  BasePresenterState createState() => getState();
}

abstract class BasePresenterState<T extends BasePresenter> extends State<T> {
  RouteManager navigator = RouteManager.getInstance();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: navigator.onGenerateRoute, home: buildHome());
  }

  Widget? buildHome() {
    return Scaffold(
        appBar: buildAppBar(context),
        body: buildBody(context),
        bottomNavigationBar: buildBottomNavigationBar(context));
  }

  /// 默认导航栏
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar();
  }

  /// 默认body
  Widget? buildBody(BuildContext context) {
    return const Center(
      child: Text('默认Presenter body'),
    );
  }

  /// 默认body
  Widget? buildBottomNavigationBar(BuildContext context) {}
}
