/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-25 16:41:37
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-29 08:59:27
 */
import 'package:flutter/material.dart';
import './NavBarTabBarView.dart';

class NavBarView extends StatelessWidget implements PreferredSizeWidget {
  const NavBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(44),
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     const NavBarTabBarView(),
          //     IconButton(
          //         onPressed: () => print('点击搜索'), icon: Icon(Icons.search)),
          //   ],
          // ),
          child: SizedBox(
            height: 44,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 40,
                ),
                const Expanded(
                  child: NavBarTabBarView(),
                ),
                IconButton(
                    onPressed: () => print('点击搜索'), icon: Icon(Icons.search)),
              ],
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => const Size(double.infinity, 44);
}
