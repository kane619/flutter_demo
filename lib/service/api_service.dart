import 'dart:async';
import 'dart:convert';
import 'package:zk/service/http_manager.dart';
import 'package:zk/bean/home_item.dart';
import 'package:common_utils/common_utils.dart';
import 'package:zk/util/sp_util.dart';

class ApiService {
    //首页
  Future<List<HomeItem>> getList() async {
    Completer<List<HomeItem>> completer = Completer();
    HttpManager().get(
        url: "portal/list",
        successCallback: (value) {
          List responseJson = json.decode(json.encode(value));
          // List<HomeItem> modelTestList = responseJson.map((m) => new HomeItem.fromJson(m)).toList();
          // completer.complete(modelTestList);
        },
        errorCallback: (value) {
          completer.completeError(value.message);
        },
        tag: "");
    return completer.future;
  }
}