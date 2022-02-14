/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-29 10:43:53
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-30 16:14:01
 */
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_zhidao_app/components/DefaultListItemView.dart';
import 'dart:math' as math;
import 'package:flutter/gestures.dart';

class DefaultListView extends StatelessWidget {
  const DefaultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        displacement: 40,
        // semanticsLabel: '刷新哦',
        strokeWidth: 2,
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        child: ListView(
          // BouncingScrollPhysics()
          physics: ReFreshBouncingScrollPhysics(),
          // controller: ScrollController(),
          children: [
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
            DefaultListItemView(),
          ],
        ),
        onRefresh: () {
          return Future(() => print('下拉了'));
        });
  }
}

class ReFreshBouncingScrollPhysics extends BouncingScrollPhysics {
  const ReFreshBouncingScrollPhysics({ScrollPhysics? parent})
      : super(parent: parent);

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    assert(offset != 0.0);
    assert(position.minScrollExtent <= position.maxScrollExtent);

    if (position.outOfRange) {
      if (position.pixels <= -80) return position.pixels + 80;
    } else
      return offset;

    return super.applyPhysicsToUserOffset(position, offset);
  }

  @override
  ReFreshBouncingScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return ReFreshBouncingScrollPhysics(parent: buildParent(ancestor));
  }
}
