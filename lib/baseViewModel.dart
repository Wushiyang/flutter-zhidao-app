/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wushiyang
 * @Date: 2022-01-25 17:24:58
 * @LastEditors: wushiyang
 * @LastEditTime: 2022-01-28 15:42:04
 */
import 'package:flutter/cupertino.dart';

// enum ViewState { Idle, Busy }

abstract class BaseViewModel with ChangeNotifier {
  // Api api;
  bool disposed = false;

  // BaseModel({ Api api}) : api = api;

  // ViewState _state = ViewState.Idle;

  // ViewState get state => _state;

  // void setState(ViewState viewState) {
  //   _state = viewState;
  //   notifyListeners();
  // }

  @override
  void dispose() {
    super.dispose();
    disposed = true;
  }

  @override
  void notifyListeners() {
    if (!disposed) {
      super.notifyListeners();
    }
  }
}
