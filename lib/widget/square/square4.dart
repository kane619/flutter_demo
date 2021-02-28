import 'package:flutter/material.dart';
import 'package:zk/constant/constant.dart';
import 'package:zk/util/screen_util.dart';

class Square4 extends StatelessWidget {
  final String type;

  const Square4(this.type, {Key key}) : super(key: key);

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    if (this.type == "l2m0r2") {
      // 1  3
      // 2  4
      return Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    child: Column(
                      children: [
                        Container(
                          height: 85,
                          width: double.infinity,
                          child: Image.network(Constant.TestImage1, fit: BoxFit.cover),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 85,
                          width: double.infinity,
                          child: Image.network(Constant.TestImage2, fit: BoxFit.cover),
                        )
                      ],
                    )
                )
            ),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    child: Column(
                      children: [
                        Container(
                          height: 85,
                          width: double.infinity,
                          child: Image.network(Constant.TestImage3, fit: BoxFit.cover),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 85,
                          width: double.infinity,
                          child: Image.network(Constant.TestImage4, fit: BoxFit.cover),
                        )
                      ],
                    )
                )),
          ],
        ),
      );
    } else {
      //l1rt1rbl1rbr1
      //     2
      //1
      //   3   4
      return Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  height: 180,
                  color: Colors.yellow,
                  child: Image.network(Constant.TestImage1, fit: BoxFit.cover),
                )),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      width: double.infinity,
                      child: Image.network(Constant.TestImage2, fit: BoxFit.cover),
                    )),
                    SizedBox(height: 10),
                    Expanded(
                      flex: 1,
                      child: Container(
                        // color: Colors.green,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 85,
                              width: double.infinity,
                              child: Image.network(Constant.TestImage3, fit: BoxFit.cover),
                            )),
                            SizedBox(width: 10),
                            Expanded(
                                child: Container(
                              height: 85,
                              width: double.infinity,
                              child: Image.network(Constant.TestImage4, fit: BoxFit.cover)))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
