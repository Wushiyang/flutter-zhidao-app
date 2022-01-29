/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-29 10:46:52
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-29 14:50:45
 */
import 'package:flutter/material.dart';
import 'package:flutter_zhidao_app/common/extension/int.dart';

class DefaultListItemView extends StatelessWidget {
  const DefaultListItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0, 16.fit, 0, 0),
      padding: EdgeInsets.symmetric(vertical: 30.fit, horizontal: 30.fit),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '为什么很多医生都反感患者上百度?',
            style: TextStyle(fontSize: 32.fit, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16.fit,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.brown,
                radius: 21.fit,
                backgroundImage: const NetworkImage(
                  'https://tse4-mm.cn.bing.net/th/id/OIP-C.e27dOldDVpKM7ZDytHwUbgAAAA?pid=ImgDet&rs=1',
                ),
              ),
              SizedBox(
                width: 10.fit,
              ),
              Text(
                '丸子妹妹',
                style: TextStyle(
                    fontSize: 30.fit,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF646464)),
              ),
              SizedBox(
                width: 10.fit,
              ),
              Expanded(
                  child: Text(
                '说点实话，做点投资。不代客理财，不再开群，只回评论别发私信。',
                style: TextStyle(
                    fontSize: 26.fit,
                    color: const Color(0xFF8e8e8e),
                    overflow: TextOverflow.ellipsis),
              ))
            ],
          ),
          SizedBox(
            height: 16.fit,
          ),
          Text(
            '我叫常满仓，家住胆肥乡。 涨停敢追板，跌停敢满仓。 熔断抄过底，雷区拾过荒。 楼顶吃贵药，顶楼喝酱香。 恋煤抢废炭，贪色接烂钢。 吃面无数碗，割肉一箩筐。 仓前明绿光，疑是屏上脏。 举头望明月，低头思智商。',
            maxLines: 2,
            style: TextStyle(
                fontSize: 30.fit,
                color: const Color(0xFF2f2f2f),
                overflow: TextOverflow.ellipsis),
          )
        ],
      ),
    );
  }
}
