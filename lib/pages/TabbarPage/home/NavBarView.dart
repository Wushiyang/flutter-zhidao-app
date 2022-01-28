/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-25 16:41:37
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-28 17:30:30
 */
import 'package:flutter/material.dart';
import './NavBarTabBarView.dart';

class NavBarView extends StatelessWidget implements PreferredSizeWidget {
  const NavBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      bottom: const NavBarTabBarView(),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 44);
}
