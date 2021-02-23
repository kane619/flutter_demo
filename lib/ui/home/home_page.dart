import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:zk/constant/app_colors.dart';
import 'package:zk/util/screen_util.dart';
import 'package:zk/widget/icon_text.dart';
import 'package:zk/widget/config_square.dart';
import 'package:zk/res/listData.dart';

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

  List _getData(){
    var tempList = listData.map((e) => )
  }


  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
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
                              color: AppColors.color_434343,
                            ),
                            iconSize: Screen.sp(55),
                            style: TextStyle(
                              fontSize: Screen.sp(46),
                              color: AppColors.color_434343,
                            )),
                        // SizeDivider(width: Screen.h(30)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(Screen.w(15)),
                    height: Screen.h(432),
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    // image: NetworkImage("${data.bannerList[index].imageUrl}"),
                                    image: NetworkImage(
                                        'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=314202116,1401007204&fm=26&gp=0.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          onTap: () {
                            // NavigatorUtil.push(context, PhotoGalleryPage(
                            // index: index,
                            // photoList: data.bannerList.map((e) => e.imageUrl).toList(),
                            // ));
                          },
                        );
                      },
                      loop: true,
                      autoplay: true,
                      scrollDirection: Axis.horizontal,
                      // itemCount: data.bannerList.length,
                      itemCount: 3,
                      pagination: SwiperPagination(
                          // 分页指示器
                          alignment: Alignment
                              .bottomCenter, // 位置 Alignment.bottomCenter 底部中间
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 5), // 距离调整
                          builder: DotSwiperPaginationBuilder(
                              // 指示器构建
                              space: ScreenUtil().setWidth(5), // 点之间的间隔
                              size: ScreenUtil().setWidth(12), // 没选中时的大小
                              activeSize: ScreenUtil().setWidth(15), // 选中时的大小
                              color: Colors.black54, // 没选中时的颜色
                              activeColor: Colors.white)), // 选中时的颜色
                    ),
                  )
                ],
              ),
            ),
            ConfigSquareWidget(listData[2])
          ],
        ),
      ),
    );
  }
}
