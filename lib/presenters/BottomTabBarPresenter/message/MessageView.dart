/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-25 10:20:58
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-25 10:34:50
 */
import 'package:flutter/material.dart';

class MessageView extends StatefulWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  _MessageViewState createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('消息'),
    );
  }
}
