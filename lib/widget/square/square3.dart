import 'package:flutter/material.dart';
import 'package:zk/constant/constant.dart';
import 'package:zk/util/screen_util.dart';

class Square3 extends StatelessWidget {
  final String type;

  const Square3(this.type, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (this.type == "l1m0r2") {
      return Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  height: 180,
                  child: Image.network(Constant.TestImage1, fit: BoxFit.cover),
                )),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 85,
                          child: Image.network(Constant.TestImage2, fit: BoxFit.cover),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 85,
                          child: Image.network(Constant.TestImage3, fit: BoxFit.cover),
                        )
                      ],
                    ))),
          ],
        ),
      );
    } else {
      //
      return Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: 180,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                  child: Container(
                    width: double.infinity,
                    height: Screen.h(230),
                    child: Image.network(Constant.TestImage1,fit: BoxFit.cover),
                  )),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: Screen.h(230),
                        child: Image.network(Constant.TestImage2,fit: BoxFit.cover),
                      )),
                  SizedBox(width: 10),
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: Screen.h(230),
                        child: Image.network(Constant.TestImage3,fit: BoxFit.cover),
                      )),
                ],
              )
            ],
          ),
        )
      );
    }
  }
}
