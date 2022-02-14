/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-29 09:03:04
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-30 15:45:44
 */
import 'package:flutter/material.dart';
import 'package:flutter_zhidao_app/components/DefaultListView.dart';
import 'package:flutter_zhidao_app/pages/TabbarPage/TabbarPageViewModel.dart';
import 'package:provider/provider.dart';

class RecommendView extends StatelessWidget {
  const RecommendView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List barList = context.select<TabbarPageViewModel, List>(
        (viewModel) => viewModel.homeModel.recommendViewTabbarList);
    List<Tab> tabs = barList
        .map((item) => Tab(
              child: Text(
                item['text'],
                style: TextStyle(color: Colors.black),
              ),
            ))
        .toList();
    List<Widget> tabViews = barList.map((item) => DefaultListView()).toList();
    return Container(
      color: Colors.grey.shade300,
      child: DefaultTabController(
          length: barList.length,
          child: Column(
            children: [
              Container(
                child: TabBar(tabs: tabs),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide()),
                ),
              ),
              Expanded(child: TabBarView(children: tabViews))
            ],
          )),
    );
  }
}
