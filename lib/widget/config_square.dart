import 'package:flutter/material.dart';
import 'package:zk/bean/home_item.dart';

class ConfigSquareWidget extends StatelessWidget {
  final HomeItem item;
  const ConfigSquareWidget(this.item,{Key key}) : super(key: key);

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {  //魔方
    // ignore: unrelated_type_equality_checks
    if (item.showType == "square") {
       if(item.templateJson.dataType == "l0m0r0"){ //一列
         return Padding(
             padding: EdgeInsets.all(10),
             child: Row(
               children: [
                 GestureDetector(
                   child: Container(
                     height: 140,
                     child: Image.network(item.templateJson.data.l.imageUrl),
                   ),
                   onTap: () {

                   },
                 )
               ],
             ),
         );
       }else if(item.templateJson.dataType == "l1m0r1"){ //两列
           return Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                        height: 140,
                        child: Image.network(item.templateJson.data.l.imageUrl),
                )),
                SizedBox(width: 10),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 140,
                      child: Image.network(item.templateJson.data.r.imageUrl)))
              ],
           );
       }else if(item.templateJson.dataType == "l1m1r1"){ //三列
           return Row(
             children: [
               Expanded(
                   flex: 1,
                   child: Container(
                     height: 140,
                     child: Image.network(item.templateJson.data.l.imageUrl),
                   )),
               SizedBox(width: 10),
               Expanded(
                   flex: 1,
                   child: Container(
                       height: 140,
                       child: Image.network(item.templateJson.data.m.imageUrl))),
               SizedBox(width: 10),
               Expanded(
                   flex: 1,
                   child: Container(
                     height: 140,
                     child: Image.network(item.templateJson.data.r.imageUrl),
                   ))
             ],
           );
       }else if(item.templateJson.dataType == "l1m2r1"){ //四列
         return Row(
           children: [
             Expanded(
                 flex: 1,
                 child: Container(
                   height: 140,
                   child: Image.network(item.templateJson.data.l.imageUrl),
                 )),
             SizedBox(width: 10),
             Expanded(
                 flex: 1,
                 child: Container(
                     height: 140,
                     child: Image.network(item.templateJson.data.ml.imageUrl))),
             SizedBox(width: 10),
             Expanded(
                 flex: 1,
                 child: Container(
                   height: 140,
                   child: Image.network(item.templateJson.data.mr.imageUrl),
                 )),
             SizedBox(width: 10),
             Expanded(
                 flex: 1,
                 child: Container(
                   height: 140,
                   child: Image.network(item.templateJson.data.r.imageUrl),
                 )),
           ],
         );
       }else if(item.templateJson.dataType == "l2m0r2"){
            // 1  3
            // 2  4
            return Row(
               children: [
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
                                 "https://www.itying.com/images/flutter/2.png",
                                 fit: BoxFit.cover,
                               ),
                             )),
                         // SizedBox(width: 10),
                         Padding(
                           padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                           child: Expanded(
                               child: Container(
                                 height: 65,
                                 width: 300,
                                 child: Image.network(
                                     "https://www.itying.com/images/flutter/2.png",
                                     fit: BoxFit.cover),
                               )),
                         )
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
                                 "https://www.itying.com/images/flutter/2.png",
                                 fit: BoxFit.cover,
                               ),
                             )),
                         // SizedBox(width: 10),
                         Padding(
                           padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                           child: Expanded(
                               child: Container(
                                 height: 65,
                                 width: 300,
                                 child: Image.network(
                                     "https://www.itying.com/images/flutter/2.png",
                                     fit: BoxFit.cover),
                               )),
                         )
                       ],
                     ),
                   ),
                 ),
               ],
            );
       }else if (item.templateJson.dataType == "l1m0r2"){
          return Row(
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
                  height: 140,
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                            height: 65,
                            width: 300,
                            color: Colors.blue,
                            child: Image.network(
                              "https://www.itying.com/images/flutter/2.png",
                              fit: BoxFit.cover,
                            ),
                          )),
                      // SizedBox(width: 10),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Expanded(
                            child: Container(
                              height: 65,
                              width: 300,
                              child: Image.network(
                                  "https://www.itying.com/images/flutter/2.png",
                                  fit: BoxFit.cover),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
       }
    }
    // return Container();
  }

}
