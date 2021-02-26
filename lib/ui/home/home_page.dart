import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zk/constant/app_colors.dart';
import 'package:zk/constant/constant.dart';
import 'package:zk/ui/webview/webview_widget.dart';
import 'package:zk/util/navigator_util.dart';
import 'package:zk/util/screen_util.dart';
import 'package:zk/vm/home_vm.dart';
import 'package:zk/widget/base/loading_container.dart';
import 'package:zk/widget/common_widget.dart';
import 'package:zk/widget/icon_text.dart';
import 'package:zk/widget/config_square.dart';
import 'package:zk/res/listData.dart';
import 'package:zk/widget/square/square.dart';
import 'package:zk/widget/swiper_widget.dart';
import 'package:zk/widget/square/square4.dart';
import 'package:zk/widget/square/square3.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {
  @override
//  切换tab后保留tab的状态，避免initState方法重复调用
  bool get wantKeepAlive => true; //必须重写

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return LoadingContainer<HomeVModel>(
        onModelReady: (model) {
          model.getList(context);
          model.setSuccess();
        },
        successChild: (data) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //       image: NetworkImage(Constant.TestImage),
                    //       fit: BoxFit.cover),
                    // ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: Screen.w(45),
                              right: Screen.w(45),
                              top: Screen.h(90)),
                          child: Row(
                            children: [
                              IconText("苏州",
                                  textAlign: TextAlign.center,
                                  icon: Icon(
                                    Icons.location_on,
                                    color: AppColors.color_000000,
                                  ),
                                  iconSize: Screen.sp(55),
                                  style: TextStyle(
                                    fontSize: Screen.sp(46),
                                    color: AppColors.color_000000,
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(Screen.w(45)),
                          height: Screen.h(432),
                          child: SwiperWidget(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(Screen.w(30)),
                    height: Screen.h(260),
                    constraints: BoxConstraints(
                        // minHeight: Screen.h(220),
                        maxWidth: ScreenUtil.screenWidth),
                    alignment: Alignment.center,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: itemRecommend(Constant.TestImage, "测试"),
                          onTap: () {
                            NavigatorUtil.push(context, WebViewWidget());
                            // NavigatorUtil.push(context, MerchantDetailPage(merchantId: "${data?.merchantItemList[index]?.id?? ""}",));
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizeDivider(width: Screen.h(30));
                      },
                      itemCount: 4,
                      shrinkWrap: true,
                      // physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.all(Screen.w(10)),
                    // height: Screen.h(260),
                    constraints: BoxConstraints(
                      minHeight: Screen.h(280),
                      //   maxWidth: ScreenUtil.screenWidth
                    ),
                    // alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Text("一行四列"),
                        SquareWidget()
                      ],
                    ),
                  ),
                  Square4("l2m0r2"),
                  Square3("l1m0r2"),
                  Square4("2"),
                  Square3("t1bl1br1")
                ],
              ),
            ),
          );
        },
        model: HomeVModel());
  }

  /// 推荐企业
  Widget itemRecommend(String imageUrl, String title) => Container(
        width: (ScreenUtil.screenWidthDp - Screen.w(150)) / 4,
        padding: EdgeInsets.all(Screen.w(45)),
        color: AppColors.color_f8f8f8,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(Screen.w(20)),
              width: Screen.w(80),
              height: Screen.w(80),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Screen.w(14)),
                  color: AppColors.color_FFFFFF),
              child: ClipRRect(
                child: Image(image: NetworkImage(imageUrl), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(Screen.w(14)),
              ),
            ),
            SizeDivider(height: Screen.h(14)),
            Text(title,
                style: TextStyle(
                    color: AppColors.color_333333,
                    fontSize: Screen.sp(35),
                    fontWeight: FontWeight.bold)),
          ],
        ),
      );
}
