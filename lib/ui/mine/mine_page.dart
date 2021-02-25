import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:zk/constant/app_colors.dart';
import 'package:zk/constant/app_images.dart';
import 'package:zk/constant/constant.dart';
import 'package:zk/ui/login/login_ui.dart';
import 'package:zk/util/navigator_util.dart';
import 'package:zk/util/screen_util.dart';
import 'package:zk/widget/common_widget.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MinePageState();
  }
}

class MinePageState extends State<MinePage> with AutomaticKeepAliveClientMixin{

  @override
  bool get wantKeepAlive => true; //必须重写

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: Screen.w(),
                  child: Padding(
                    padding: EdgeInsets.only(left: Screen.w(45), right: Screen.w(45), top: Screen.h(90), bottom: Screen.h(180)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              child: Icon(Icons.settings),
                              onTap: () {
                                _alertDialog();
                              },
                            )
                          ],
                        ),
                        SizeDivider(height: Screen.h(60)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: Screen.w(173),
                              width: Screen.w(173),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(Constant.TestImage),
                              ),
                            ),
                            SizeDivider(width: Screen.h(60)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("智客新人", style: TextStyle(fontSize: Screen.sp(52),fontWeight:FontWeight.bold, color: AppColors.color_000000),),
                                Text("普通经纪人", style: TextStyle(fontSize: Screen.sp(29), color: AppColors.color_434343),),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizeDivider(height: Screen.h(50)),
                Container(height: Screen.h(30), color: AppColors.color_f8f8f8),
                Padding(padding: EdgeInsets.fromLTRB(Screen.h(30), Screen.h(30), 0, 0), child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(Screen.h(30), Screen.h(30), 0, 0),
                      child: Text("我的服务", style: TextStyle(fontSize: Screen.sp(46), color: AppColors.color_333333, fontWeight: FontWeight.bold),),
                    )
                  ],
                )),
                bottomContainer,
              ],
            ),
            Positioned(
              top: Screen.h(420),
              left: Screen.w(45),
              right: Screen.w(45),
              child: topContainer,
            ),
          ],
        ),
      ),
    );
  }

  /// 退出登录弹窗
  _alertDialog() async {
    var alertDialogs = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Text("确定要退出吗"),
            actions: <Widget>[
              FlatButton(
                  child: Text("取消"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              FlatButton(
                  child: Text("确定"),
                  onPressed: () async {
                    // NavigatorUtil.pushAndRemoveUtil(context, LoginUi(), (Route<dynamic> route) => false);
                    Navigator.pop(context);
                    NavigatorUtil.push(context, LoginUi());
                  }),
            ],
          );
        });
    return alertDialogs;
  }

  Widget get topContainer => Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          topContainerItem("0", "我的关注"),
          topContainerItem("0", "我的活动"),
          topContainerItem("0", "我的卡包"),
        ],
      ),
  );

  Widget get midContainer => Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

      ],
    ),
  );

  Widget get bottomContainer => Container(
    color: AppColors.color_FFFFFF,
    margin: EdgeInsets.all(Screen.w(45)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        bottomContainerItem(AppImages.homeNor, "发展经纪人"),
        bottomContainerItem(AppImages.homeNor, "置业顾问"),
        bottomContainerItem(AppImages.homeNor, "我的预约"),
        bottomContainerItem(AppImages.homeNor, "我的消息"),
        bottomContainerItem(AppImages.homeNor, "意见反馈")
      ],
    ),
  );


  Widget topContainerItem(String count, String title) => Container(
    margin: EdgeInsets.all(Screen.w(45)),
    color: AppColors.color_FFFFFF,
    child: Column(
      children: [
        Text(count, style: TextStyle(color: AppColors.color_ff0000, fontSize: Screen.sp(40), fontWeight: FontWeight.bold),),
        SizeDivider(height: Screen.h(30)),
        Text(title, style: TextStyle(color: AppColors.color_666666, fontSize: Screen.sp(35))),
      ],
    ),
  );

  // Widget midContainerItem
  Widget midContainerItem(String title,{String money}) => Container(
    margin: EdgeInsets.all(Screen.w(15)),
    child: Row(

    ),
  );

  Widget bottomContainerItem(String image,String title) => Container(
    margin: EdgeInsets.all(Screen.w(15)),
    padding: EdgeInsets.all(Screen.w(15)),
    color: AppColors.color_FFFFFF,
    child: Row(
      children: [
        Image.asset(image, width: Screen.w(70), height: Screen.w(70),),
        SizeDivider(height: Screen.h(30)),
        Padding(padding: EdgeInsets.only(left: Screen.w(35), right: 0, top: 0, bottom: 0),
          child: Text(title, style: TextStyle(color: AppColors.color_666666, fontSize: Screen.sp(35)))),
      ],
    ),
  );

}
