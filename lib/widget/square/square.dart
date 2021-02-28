import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zk/constant/constant.dart';
import 'package:zk/util/screen_util.dart';

class SquareWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(Screen.w(20), 0, Screen.w(20), 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: (ScreenUtil.screenWidthDp/5-11),
            height: Screen.h(180),
            child: Image.network(Constant.TestImage,fit: BoxFit.fill),
          ),
          SizedBox(width: 10),
          Container(
            width: (ScreenUtil.screenWidthDp/5-11),
            height: Screen.h(180),
            child: Image.network(Constant.TestImage,fit: BoxFit.fill),
          ),
          SizedBox(width: 10),
          Container(
            width: (ScreenUtil.screenWidthDp/5-11),
            height: Screen.h(180),
            child: Image.network(Constant.TestImage,fit: BoxFit.fill),
          ),
          SizedBox(width: 10),
          Container(
            width: (ScreenUtil.screenWidthDp/5-11),
            height: Screen.h(180),
            child: Image.network(Constant.TestImage,fit: BoxFit.fill),
          ),
          SizedBox(width: 10),
          Container(
            width: (ScreenUtil.screenWidthDp/5-11),
            height: Screen.h(180),
            child: Image.network(Constant.TestImage,fit: BoxFit.fill),
          ),
        ],
      )
    );
  }
}
