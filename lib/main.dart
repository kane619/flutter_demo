import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:zk/service/http_manager.dart';
import 'package:zk/service/log_interceptor.dart';
import 'package:zk/util/log_util.dart';
import 'package:zk/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:zk/ui/main_page.dart';
import 'package:provider/provider.dart';
import 'package:zk/ui/login/login_ui.dart';
import 'package:zk/util/sp_util.dart';

import 'constant/config.dart';
import 'constant/constant.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ///初始化配置
  Config.fill(debug: Constant.Debug, dbName: "zk", apiUrl: Constant.BaseUrl);
  /// 初始化日志
  LogUtil.init(isDebug: Config.inst.debug, tag: "zhiKeTag");
  /// 初始化sp
  await SpUtil().init();
  /// 初始化网络
  HttpManager().init(baseUrl: Config.inst.apiUrl, interceptors: [LogInterceptor()], headers: {HttpHeaders.authorizationHeader: SpUtil().getString(SpKeyUtil.TokenKey)});
  /// 初始化刷新
  await initRefresh();
  SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor:Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  runApp(MyApp());
}

Future initRefresh() async {
  /// 初始化刷新样式
  EasyRefresh.defaultHeader = ClassicalHeader(
      refreshText: "下拉刷新",
      refreshReadyText: "释放刷新",
      refreshingText: "正在刷新",
      refreshedText: "刷新完成",
      infoText: '更新于 %T');
  EasyRefresh.defaultFooter = ClassicalFooter(
      loadText: "下拉加载更多",
      loadReadyText: "释放加载更多",
      loadingText: "加载中",
      loadedText: "加载完成",
      infoText: '更新于 %T');
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [

    ],
      child: MaterialApp(
        title: '智客',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          "/login": (context) => LoginUi(),
          "/home": (context) => MainPage()
        },
        locale: const Locale('zh'),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('zh', 'CH'),
          const Locale('en', 'US'),
        ],
        home: App(),
      ),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    /// 初始化尺寸
    Screen.init(context, 1080, 1920);
    // if(text.TextUtil.isEmpty(SpUtil().getString(SpKeyUtil.TokenKey))) {
    //   return LoginUi();
    // }
    return MainPage();
  }

}