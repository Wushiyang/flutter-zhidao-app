/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-25 10:20:58
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-25 10:34:54
 */
import 'package:flutter/material.dart';

class ConcernView extends StatefulWidget {
  const ConcernView({Key? key}) : super(key: key);

  @override
  _ConcernViewState createState() => _ConcernViewState();
}

class _ConcernViewState extends State<ConcernView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('关注'),
    );
  }
}
