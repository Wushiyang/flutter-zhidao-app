/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-25 10:20:58
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-29 10:29:01
 */
import 'package:flutter/material.dart';
import 'package:flutter_zhidao_app/pages/TabbarPage/TabbarPageViewModel.dart';
import 'package:flutter_zhidao_app/pages/TabbarPage/home/recommendView.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: context.select<TabbarPageViewModel, Future<TabController>>(
            (viewModel) =>
                viewModel.homeModel.homeNavBarTabBarController.future),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return TabBarView(controller: snapshot.data, children: const [
              Center(
                child: Text('视频'),
              ),
              RecommendView(),
              Center(
                child: Text('热榜'),
              ),
            ]);
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
