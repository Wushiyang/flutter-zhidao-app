/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-24 16:40:56
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-24 18:01:44
 */
import 'package:flutter/material.dart';
import 'package:flutter_zhidao_app/BasePresenter.dart';

class TabsPresenter extends BasePresenter {
  final Map<String, dynamic> arguments;

  const TabsPresenter(this.arguments, {Key? key}) : super(key: key);

  @override
  getState() {
    return _TabsPresenterState();
  }
}

class _TabsPresenterState extends BasePresenterState<TabsPresenter> {}
