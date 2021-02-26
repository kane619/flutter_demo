import 'package:flutter/material.dart';

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
                height: 140,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      height: 65,
                      width: 300,
                      color: Colors.blue,
                      child: Image.network(
                        "https://www.itying.com/images/flutter/1.png",
                        fit: BoxFit.cover,
                      ),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: Container(
                      height: 65,
                      width: 300,
                      child: Image.network(
                          "https://www.itying.com/images/flutter/2.png",
                          fit: BoxFit.cover),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.green,
                height: 140,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      height: 65,
                      width: 300,
                      color: Colors.blue,
                      child: Image.network(
                        "https://www.itying.com/images/flutter/3.png",
                        fit: BoxFit.cover,
                      ),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: Container(
                      height: 65,
                      width: 300,
                      child: Image.network(
                          "https://www.itying.com/images/flutter/4.png",
                          fit: BoxFit.cover),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {  //l1rt1rbl1rbr1
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
                  // color: Colors.yellow,
                  child: Image.network(
                      "https://www.itying.com/images/flutter/2.png"),
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
                      flex: 1,
                      child: Container(
                        // color: Colors.green,
                        height: 140,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                                  height: 65,
                                  width: 300,
                                  color: Colors.blue,
                                  child: Image.network(
                                    "https://www.itying.com/images/flutter/3.png",
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            SizedBox(width: 10),
                            Expanded(
                                child: Container(
                                  height: 65,
                                  width: 300,
                                  child: Image.network(
                                      "https://www.itying.com/images/flutter/2.png",
                                      fit: BoxFit.cover),
                                ))
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
