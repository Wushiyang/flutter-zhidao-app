/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-28 16:04:43
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-28 17:36:37
 */
import 'package:flutter/material.dart';
import 'package:flutter_zhidao_app/pages/TabbarPage/TabbarPageViewModel.dart';
import 'package:provider/provider.dart';

class NavBarTabBarView extends StatefulWidget implements PreferredSizeWidget {
  const NavBarTabBarView({Key? key}) : super(key: key);

  @override
  _NavBarTabBarViewState createState() => _NavBarTabBarViewState();

  @override
  Size get preferredSize => const Size.fromHeight(44);
}

class _NavBarTabBarViewState extends State<NavBarTabBarView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    context
        .read<TabbarPageViewModel>()
        .setHomeNavBarTabBarController(TabController(length: 3, vsync: this));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: context.select<TabbarPageViewModel, Future<TabController>>(
            (viewModel) => viewModel.homeNavBarTabBarController.future),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return TabBar(controller: snapshot.data, tabs: const [
              Tab(
                height: 42,
                child: Text('视频'),
              ),
              Tab(
                height: 42,
                child: Text('推荐'),
              ),
              Tab(
                height: 42,
                child: Text('热榜'),
              ),
            ]);
          }
          return Container();
        });
  }
}
