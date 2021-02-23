import 'package:json_annotation/json_annotation.dart'; 
  
part 'home_item.g.dart';


@JsonSerializable()
  class HomeItem extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'createDate')
  String createDate;

  @JsonKey(name: 'updateDate')
  String updateDate;

  @JsonKey(name: 'showType')
  String showType;

  @JsonKey(name: 'orderNumber')
  int orderNumber;

  @JsonKey(name: 'templateJson')
  TemplateJson templateJson;

  HomeItem(this.id,this.createDate,this.updateDate,this.showType,this.orderNumber,this.templateJson,);

  factory HomeItem.fromJson(Map<String, dynamic> srcJson) => _$HomeItemFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HomeItemToJson(this);

}

  
@JsonSerializable()
  class TemplateJson extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'data')
  Data data;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'appLists')
  List<AppLists> appLists;

  @JsonKey(name: 'dataType')
  String dataType;

  TemplateJson(this.code,this.data,this.name,this.type,this.appLists,this.dataType,);

  factory TemplateJson.fromJson(Map<String, dynamic> srcJson) => _$TemplateJsonFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TemplateJsonToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'l')
  DataInfo l;
  DataInfo r;
  DataInfo m;
  DataInfo ml;
  DataInfo mr;
  DataInfo lt;
  DataInfo lb;
  DataInfo rt;
  DataInfo rb;
  DataInfo t;
  DataInfo bl;
  DataInfo br;
  DataInfo rbl;
  DataInfo rbr;


  Data(this.l,this.r,this.m,this.ml,this.mr,this.lt,this.lb,this.rt,this.rb,this.t,this.bl,this.br,this.rbl,this.rbr);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
@JsonSerializable()
  class DataInfo extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'num')
  String num;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'appId')
  String appId;

  @JsonKey(name: 'method')
  String method;

  @JsonKey(name: 'h5Config')
  H5Config h5Config;

  @JsonKey(name: 'imageUrl')
  String imageUrl;

  @JsonKey(name: 'appSecret')
  String appSecret;

  DataInfo(this.id,this.num,this.name,this.type,this.appId,this.method,this.h5Config,this.imageUrl,this.appSecret,);

  factory DataInfo.fromJson(Map<String, dynamic> srcJson) => _$LFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LToJson(this);

}

  
@JsonSerializable()
  class H5Config extends Object {

  @JsonKey(name: 'link')
  String link;

  H5Config(this.link,);

  factory H5Config.fromJson(Map<String, dynamic> srcJson) => _$H5ConfigFromJson(srcJson);

  Map<String, dynamic> toJson() => _$H5ConfigToJson(this);

}

  
@JsonSerializable()
  class AppLists extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'num')
  String num;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'appId')
  String appId;

  @JsonKey(name: 'method')
  String method;

  @JsonKey(name: 'h5Config')
  H5Config h5Config;

  @JsonKey(name: 'imageUrl')
  String imageUrl;

  @JsonKey(name: 'appSecret')
  String appSecret;

  AppLists(this.id,this.num,this.name,this.type,this.appId,this.method,this.h5Config,this.imageUrl,this.appSecret,);

  factory AppLists.fromJson(Map<String, dynamic> srcJson) => _$AppListsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AppListsToJson(this);

}

  
@JsonSerializable()
  class H5Config extends Object {

  @JsonKey(name: 'link')
  String link;

  H5Config(this.link,);

  factory H5Config.fromJson(Map<String, dynamic> srcJson) => _$H5ConfigFromJson(srcJson);

  Map<String, dynamic> toJson() => _$H5ConfigToJson(this);

}

  
