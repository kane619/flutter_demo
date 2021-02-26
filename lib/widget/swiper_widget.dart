import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:zk/constant/constant.dart';
import 'package:zk/util/navigator_util.dart';
import 'package:zk/widget/page/photo_gallery_view_page.dart';

class SwiperWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image:
                      NetworkImage(Constant.TestImage),
                      fit: BoxFit.cover)),
            ),
            onTap: () {
              NavigatorUtil.push(
                  context,
                  PhotoGalleryPage(
                    index: index,
                    // photoList: data.bannerList.map((e) => e.imageUrl).toList(),
                  ));
            },
          );
        },
        loop: true,
        autoplay: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        pagination: SwiperPagination(
          // 分页指示器
            alignment: Alignment.bottomCenter,
            // 位置 Alignment.bottomCenter 底部中间
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            // 距离调整
            builder: DotSwiperPaginationBuilder(
              // 指示器构建
                space: ScreenUtil().setWidth(5),
                // 点之间的间隔
                size: ScreenUtil().setWidth(12),
                // 没选中时的大小
                activeSize: ScreenUtil().setWidth(15),
                // 选中时的大小
                color: Colors.black54,
                // 没选中时的颜色
                activeColor: Colors.white)), // 选中时的颜色
      ),
    );
  }
}
