import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zk/constant/constant.dart';
import 'package:zk/util/screen_util.dart';

class SquareWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Expanded(
          //     flex: 1,
          //     child: Container(
          //       height: 140,
          //       child: Image.network(Constant.TestImage),
          //     )),
          // SizedBox(width: 10),
          // Expanded(
          //     flex: 1,
          //     child: Container(
          //         height: 140,
          //         child: Image.network(Constant.TestImage))),
          // SizedBox(width: 10),
          // Expanded(
          //     flex: 1,
          //     child: Container(
          //       height: 140,
          //       child: Image.network(Constant.TestImage),
          //     )),
          // SizedBox(width: 10),
          // Expanded(
          //     flex: 1,
          //     child: Container(
          //       height: 140,
          //       child: Image.network(Constant.TestImage),
          //     )),
          Container(
            color: Colors.green,
            width: (ScreenUtil.screenWidthDp/4-13),
            height: 100,
            child: Image.network(Constant.TestImage),
          ),
          SizedBox(width: 10),
          Container(
            width: (ScreenUtil.screenWidthDp/4-13),
            child: Image.network(Constant.TestImage),
          ),
          SizedBox(width: 10),
          Container(
            width: (ScreenUtil.screenWidthDp/4-13),
            child: Image.network(Constant.TestImage),
          ),
          SizedBox(width: 10),
          Container(
            width: (ScreenUtil.screenWidthDp/4-13),
            child: Image.network(Constant.TestImage),
          ),
        ],
      )
    );
  }
}
