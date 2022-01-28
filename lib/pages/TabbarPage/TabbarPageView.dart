/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-26 09:15:27
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-28 14:49:37
 */
import 'package:flutter/material.dart';
import 'package:flutter_zhidao_app/pages/TabbarPage/TabbarPageViewModel.dart';
import 'package:provider/provider.dart';

class TabbarPageView extends StatelessWidget {
  TabbarPageView({Key? key}) : super(key: key);

  final TabbarPageViewModel viewModel = TabbarPageViewModel();

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = viewModel.barList
        .map((e) => BottomNavigationBarItem(
            icon: e['icon'], activeIcon: e['active'], label: e['label']))
        .toList();
    return ChangeNotifierProvider<TabbarPageViewModel>(
      create: (BuildContext context) {
        return viewModel;
      },
      builder: (context, child) {
        return Scaffold(
          appBar: viewModel.barList[viewModel.currentIndex]['nav'],
          body: viewModel.barList[viewModel.currentIndex]['view'],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: context.select<TabbarPageViewModel, int>(
                  (viewModel) => viewModel.currentIndex),
              type: BottomNavigationBarType.fixed,
              onTap: (int index) => viewModel.changeTab(index),
              items: items),
        );
      },
    );
  }
}
