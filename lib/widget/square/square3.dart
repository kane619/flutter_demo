import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  // color: Colors.yellow,
                  child: Image.network(
                      "https://www.itying.com/images/flutter/1.png"),
                )),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.green,
                height: 150,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      // height: 75,
                      width: 300,
                      color: Colors.blue,
                      child: Image.network(
                        "https://www.itying.com/images/flutter/2.png",
                        fit: BoxFit.cover,
                      ),
                    )),
                    // SizedBox(width: 10),
                    Expanded(
                        child: Container(
                      // height: 75,
                      width: 300,
                      child: Image.network(
                          "https://www.itying.com/images/flutter/3.png",
                          fit: BoxFit.cover),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      //
      return Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: Screen.h(500),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                  child: Container(
                    width: ScreenUtil.screenWidthDp,
                    height: Screen.h(230),
                    child: Image.network(
                      "https://www.itying.com/images/flutter/1.png",
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(width: 10),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: Screen.h(230),
                        child: Image.network(
                          "https://www.itying.com/images/flutter/2.png",
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(width: 10),
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: Screen.h(230),
                        child: Image.network(
                          "https://www.itying.com/images/flutter/3.png",
                          fit: BoxFit.cover,
                        ),
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
