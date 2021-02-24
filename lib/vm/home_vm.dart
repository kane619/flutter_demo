import 'package:zk/vm/base_refresh_list_vmodel.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zk/bean/home_item.dart';

class HomeVModel extends BaseRefreshListVModel{

  ///首页配置
  List<HomeItem> _homeItemList = [];
  List<HomeItem> get homeItemList => _homeItemList;

  set homeItemList(List<HomeItem> value) {
    _homeItemList = value;
    notifyListeners();
  }

  @override
  void onDataReady() {
    // TODO: implement onDataReady
  }

  ///获取首页配置
  getList(BuildContext context){
    apiService.getList().then((value) => {
      // homeItemList = value
    }).catchError((value) {
      Fluttertoast.showToast(msg: value);
    });
  }

}