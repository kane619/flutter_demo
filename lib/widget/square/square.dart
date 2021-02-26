import 'package:flutter/material.dart';
import 'package:zk/constant/constant.dart';

class SquareWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                height: 140,
                child: Image.network(Constant.TestImage),
              )),
          SizedBox(width: 10),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  child: Image.network(Constant.TestImage))),
          SizedBox(width: 10),
          Expanded(
              flex: 1,
              child: Container(
                height: 140,
                child: Image.network(Constant.TestImage),
              )),
          SizedBox(width: 10),
          Expanded(
              flex: 1,
              child: Container(
                height: 140,
                child: Image.network(Constant.TestImage),
              )),
        ],
      )
    );
  }
}
