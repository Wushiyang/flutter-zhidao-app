/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-29 11:15:28
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-29 11:37:40
 */
import '../Fit.dart';

extension FitNum on num {
  get fit {
    return Fit.px(this);
  }
}
