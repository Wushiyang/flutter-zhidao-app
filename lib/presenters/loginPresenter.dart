/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-25 10:21:08
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-25 10:23:24
 */
import 'package:flutter/material.dart';
import '../BasePresenter.dart';

class LoginPresenter extends BasePresenter {
  const LoginPresenter(Map<String, dynamic>? arguments, {Key? key})
      : super(arguments, key: key);

  @override
  BasePresenterState<BasePresenter> getState() {
    return LoginPresenterState();
  }
}

class LoginPresenterState extends BasePresenterState {
  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Text('登录页面'),
    );
  }
}
