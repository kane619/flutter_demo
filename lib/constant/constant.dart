class Constant {
  /// debug
  static final bool Debug = true;

  /// base url
  // static final String BaseUrl = "http://351x29514o.zicp.vip/"; /// 内网穿透
  // ignore: non_constant_identifier_names
  static final String BaseUrl = "https://zk.movitech.cn:18443/portalClient/portalClientApi/"; /// 服务器地址

  /// test image url
  static final String TestImage = "http://zyx-local.oss-cn-shanghai.aliyuncs.com/zk/2021/2/3/a52e43753c4746a6895332868e79afd7.png";

  /// pageSize
  static final int PAGE_SIZE = 10; // 默认十条
  static final int PAGE_SIZE_100 = 100; // 可以100条
  static final int PAGE_SIZE_1000 = 1000; // 可以1000条

}

class SpKeyUtil {
  static final String TokenKey = "TokenKey";
}
