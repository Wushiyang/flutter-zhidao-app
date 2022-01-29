/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-28 16:04:43
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-29 10:30:57
 */
import 'package:flutter/material.dart';
import 'package:flutter_zhidao_app/pages/TabbarPage/TabbarPageViewModel.dart';
import 'package:provider/provider.dart';

class NavBarTabBarView extends StatefulWidget {
  const NavBarTabBarView({Key? key}) : super(key: key);

  @override
  _NavBarTabBarViewState createState() => _NavBarTabBarViewState();
}

class _NavBarTabBarViewState extends State<NavBarTabBarView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    context
        .read<TabbarPageViewModel>()
        .homeModel
        .setHomeNavBarTabBarController(TabController(length: 3, vsync: this));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: context.select<TabbarPageViewModel, Future<TabController>>(
            (viewModel) =>
                viewModel.homeModel.homeNavBarTabBarController.future),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return TabBar(controller: snapshot.data, tabs: const [
              Tab(
                child: Text(
                  '视频',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  '推荐',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  '热榜',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ]);
          }
          return Container();
        });
  }
}
