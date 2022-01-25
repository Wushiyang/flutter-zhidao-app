/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-25 16:41:37
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-25 16:55:35
 */

import 'package:flutter/material.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({Key? key}) : super(key: key);

  @override
  _NavbarViewState createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('测试'),
    );
  }
}
