/// id : "3625836cb0eac951655360c8cf6e5107"
/// createBy : null
/// createDate : "2021-02-23 14:54:54"
/// updateBy : null
/// updateDate : "2021-02-23 14:54:54"
/// showType : "square"
/// orderNumber : 7
/// templateJson : {"code":7842,"data":{"l":{"id":"nyms7xGZwJhJWym2Q7QYCRNTYiBazSKs2764","num":"H11","name":"臻品商城","type":"1","appId":"10088","method":"1","h5Config":{"link":"https://shop42983521.m.youzan.com/v2/showcase/homepage?kdt_id=42791353&scan=3&from=kdt"},"imageUrl":"http://zyx-local.oss-cn-shanghai.aliyuncs.com/zk/2021/2/22/94ed1fd83efc4df588efd15c5c48d616.png","spConfig":null,"appSecret":"10088","pagesConfig":null,"widgetConfig":null}},"name":"square","type":"square","appLists":[{"id":"nyms7xGZwJhJWym2Q7QYCRNTYiBazSKs2764","num":"H11","name":"臻品商城","type":"1","appId":"10088","method":"1","h5Config":{"link":"https://shop42983521.m.youzan.com/v2/showcase/homepage?kdt_id=42791353&scan=3&from=kdt"},"imageUrl":"http://zyx-local.oss-cn-shanghai.aliyuncs.com/zk/2021/2/22/94ed1fd83efc4df588efd15c5c48d616.png","spConfig":null,"appSecret":"10088","pagesConfig":null,"widgetConfig":null}],"dataType":"l0m0r0"}

// ignore: camel_case_types
class HomeItem {
  String _id;
  dynamic _createBy;
  String _createDate;
  dynamic _updateBy;
  String _updateDate;
  String _showType;
  int _orderNumber;
  TemplateJson _templateJson;

  String get id => _id;
  dynamic get createBy => _createBy;
  String get createDate => _createDate;
  dynamic get updateBy => _updateBy;
  String get updateDate => _updateDate;
  String get showType => _showType;
  int get orderNumber => _orderNumber;
  TemplateJson get templateJson => _templateJson;

  HomeItem({
      String id, 
      dynamic createBy, 
      String createDate, 
      dynamic updateBy, 
      String updateDate, 
      String showType, 
      int orderNumber, 
      TemplateJson templateJson}){
    _id = id;
    _createBy = createBy;
    _createDate = createDate;
    _updateBy = updateBy;
    _updateDate = updateDate;
    _showType = showType;
    _orderNumber = orderNumber;
    _templateJson = templateJson;
}

  HomeItem.fromJson(dynamic json) {
    _id = json["id"];
    _createBy = json["createBy"];
    _createDate = json["createDate"];
    _updateBy = json["updateBy"];
    _updateDate = json["updateDate"];
    _showType = json["showType"];
    _orderNumber = json["orderNumber"];
    _templateJson = json["templateJson"] != null ? TemplateJson.fromJson(json["templateJson"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["createBy"] = _createBy;
    map["createDate"] = _createDate;
    map["updateBy"] = _updateBy;
    map["updateDate"] = _updateDate;
    map["showType"] = _showType;
    map["orderNumber"] = _orderNumber;
    if (_templateJson != null) {
      map["templateJson"] = _templateJson.toJson();
    }
    return map;
  }

}

/// code : 7842
/// data : {"l":{"id":"nyms7xGZwJhJWym2Q7QYCRNTYiBazSKs2764","num":"H11","name":"臻品商城","type":"1","appId":"10088","method":"1","h5Config":{"link":"https://shop42983521.m.youzan.com/v2/showcase/homepage?kdt_id=42791353&scan=3&from=kdt"},"imageUrl":"http://zyx-local.oss-cn-shanghai.aliyuncs.com/zk/2021/2/22/94ed1fd83efc4df588efd15c5c48d616.png","spConfig":null,"appSecret":"10088","pagesConfig":null,"widgetConfig":null}}
/// name : "square"
/// type : "square"
/// appLists : [{"id":"nyms7xGZwJhJWym2Q7QYCRNTYiBazSKs2764","num":"H11","name":"臻品商城","type":"1","appId":"10088","method":"1","h5Config":{"link":"https://shop42983521.m.youzan.com/v2/showcase/homepage?kdt_id=42791353&scan=3&from=kdt"},"imageUrl":"http://zyx-local.oss-cn-shanghai.aliyuncs.com/zk/2021/2/22/94ed1fd83efc4df588efd15c5c48d616.png","spConfig":null,"appSecret":"10088","pagesConfig":null,"widgetConfig":null}]
/// dataType : "l0m0r0"

class TemplateJson {
  int _code;
  Data _data;
  String _name;
  String _type;
  List<AppLists> _appLists;
  String _dataType;

  int get code => _code;
  Data get data => _data;
  String get name => _name;
  String get type => _type;
  List<AppLists> get appLists => _appLists;
  String get dataType => _dataType;

  TemplateJson({
      int code, 
      Data data, 
      String name, 
      String type, 
      List<AppLists> appLists, 
      String dataType}){
    _code = code;
    _data = data;
    _name = name;
    _type = type;
    _appLists = appLists;
    _dataType = dataType;
}

  TemplateJson.fromJson(dynamic json) {
    _code = json["code"];
    _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
    _name = json["name"];
    _type = json["type"];
    if (json["appLists"] != null) {
      _appLists = [];
      json["appLists"].forEach((v) {
        _appLists.add(AppLists.fromJson(v));
      });
    }
    _dataType = json["dataType"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["code"] = _code;
    if (_data != null) {
      map["data"] = _data.toJson();
    }
    map["name"] = _name;
    map["type"] = _type;
    if (_appLists != null) {
      map["appLists"] = _appLists.map((v) => v.toJson()).toList();
    }
    map["dataType"] = _dataType;
    return map;
  }

}

/// id : "nyms7xGZwJhJWym2Q7QYCRNTYiBazSKs2764"
/// num : "H11"
/// name : "臻品商城"
/// type : "1"
/// appId : "10088"
/// method : "1"
/// h5Config : {"link":"https://shop42983521.m.youzan.com/v2/showcase/homepage?kdt_id=42791353&scan=3&from=kdt"}
/// imageUrl : "http://zyx-local.oss-cn-shanghai.aliyuncs.com/zk/2021/2/22/94ed1fd83efc4df588efd15c5c48d616.png"
/// spConfig : null
/// appSecret : "10088"
/// pagesConfig : null
/// widgetConfig : null

class AppLists {
  String _id;
  String _num;
  String _name;
  String _type;
  String _appId;
  String _method;
  H5Config _h5Config;
  String _imageUrl;
  dynamic _spConfig;
  String _appSecret;
  dynamic _pagesConfig;
  dynamic _widgetConfig;

  String get id => _id;
  String get num => _num;
  String get name => _name;
  String get type => _type;
  String get appId => _appId;
  String get method => _method;
  H5Config get h5Config => _h5Config;
  String get imageUrl => _imageUrl;
  dynamic get spConfig => _spConfig;
  String get appSecret => _appSecret;
  dynamic get pagesConfig => _pagesConfig;
  dynamic get widgetConfig => _widgetConfig;

  AppLists({
      String id, 
      String num, 
      String name, 
      String type, 
      String appId, 
      String method, 
      H5Config h5Config, 
      String imageUrl, 
      dynamic spConfig, 
      String appSecret, 
      dynamic pagesConfig, 
      dynamic widgetConfig}){
    _id = id;
    _num = num;
    _name = name;
    _type = type;
    _appId = appId;
    _method = method;
    _h5Config = h5Config;
    _imageUrl = imageUrl;
    _spConfig = spConfig;
    _appSecret = appSecret;
    _pagesConfig = pagesConfig;
    _widgetConfig = widgetConfig;
}

  AppLists.fromJson(dynamic json) {
    _id = json["id"];
    _num = json["num"];
    _name = json["name"];
    _type = json["type"];
    _appId = json["appId"];
    _method = json["method"];
    _h5Config = json["h5Config"] != null ? H5Config.fromJson(json["h5Config"]) : null;
    _imageUrl = json["imageUrl"];
    _spConfig = json["spConfig"];
    _appSecret = json["appSecret"];
    _pagesConfig = json["pagesConfig"];
    _widgetConfig = json["widgetConfig"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["num"] = _num;
    map["name"] = _name;
    map["type"] = _type;
    map["appId"] = _appId;
    map["method"] = _method;
    if (_h5Config != null) {
      map["h5Config"] = _h5Config.toJson();
    }
    map["imageUrl"] = _imageUrl;
    map["spConfig"] = _spConfig;
    map["appSecret"] = _appSecret;
    map["pagesConfig"] = _pagesConfig;
    map["widgetConfig"] = _widgetConfig;
    return map;
  }

}

/// link : "https://shop42983521.m.youzan.com/v2/showcase/homepage?kdt_id=42791353&scan=3&from=kdt"

class H5Config {
  String _link;

  String get link => _link;

  H5Config({
      String link}){
    _link = link;
}

  H5Config.fromJson(dynamic json) {
    _link = json["link"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["link"] = _link;
    return map;
  }

}

/// l : {"id":"nyms7xGZwJhJWym2Q7QYCRNTYiBazSKs2764","num":"H11","name":"臻品商城","type":"1","appId":"10088","method":"1","h5Config":{"link":"https://shop42983521.m.youzan.com/v2/showcase/homepage?kdt_id=42791353&scan=3&from=kdt"},"imageUrl":"http://zyx-local.oss-cn-shanghai.aliyuncs.com/zk/2021/2/22/94ed1fd83efc4df588efd15c5c48d616.png","spConfig":null,"appSecret":"10088","pagesConfig":null,"widgetConfig":null}

class Data {
  DataInfo _l;
  DataInfo _r;
  DataInfo _m;
  DataInfo _ml;
  DataInfo _mr;
  DataInfo _lt;
  DataInfo _lb;
  DataInfo _rt;
  DataInfo _rb;
  DataInfo _t;
  DataInfo _bl;
  DataInfo _br;
  DataInfo _rbl;
  DataInfo _rbr;
  DataInfo get l => _l;
  DataInfo get r => _r;
  DataInfo get m => _m;
  DataInfo get ml => _ml;
  DataInfo get mr => _mr;
  DataInfo get lt => _lt;
  DataInfo get lb => _lb;
  DataInfo get rt => _rt;
  DataInfo get rb => _rb;
  DataInfo get t => _t;
  DataInfo get bl => _bl;
  DataInfo get br => _br;
  DataInfo get rbl => _rbl;
  DataInfo get rbr => _rbr;
  Data({
      DataInfo l}){
    _l = l;
    _r = r;
    _m = m;
    _ml = ml;
    _mr = mr;
    _lt = lt;
    _lb = lb;
    _rt = rt;
    _rb = rb;
    _t = t;
    _bl = bl;
    _br = br;
    _rbl = rbl;
    _rbr = rbr;
}

  Data.fromJson(dynamic json) {
    _l = json["l"] != null ? DataInfo.fromJson(json["l"]) : null;
    _r = json["r"] != null ? DataInfo.fromJson(json["r"]) : null;
    _m = json["m"] != null ? DataInfo.fromJson(json["m"]) : null;
    _ml = json["ml"] != null ? DataInfo.fromJson(json["ml"]) : null;
    _mr = json["mr"] != null ? DataInfo.fromJson(json["mr"]) : null;
    _lt = json["lt"] != null ? DataInfo.fromJson(json["lt"]) : null;
    _lb = json["lb"] != null ? DataInfo.fromJson(json["lb"]) : null;
    _rt = json["rt"] != null ? DataInfo.fromJson(json["rt"]) : null;
    _rb = json["rb"] != null ? DataInfo.fromJson(json["rb"]) : null;
    _t = json["t"] != null ? DataInfo.fromJson(json["t"]) : null;
    _bl = json["bl"] != null ? DataInfo.fromJson(json["bl"]) : null;
    _br = json["br"] != null ? DataInfo.fromJson(json["br"]) : null;
    _rbl = json["rbl"] != null ? DataInfo.fromJson(json["rbl"]) : null;
    _rbr = json["rbr"] != null ? DataInfo.fromJson(json["rbr"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_l != null) {
      map["l"] = _l.toJson();
    }
    return map;
  }

}

/// id : "nyms7xGZwJhJWym2Q7QYCRNTYiBazSKs2764"
/// num : "H11"
/// name : "臻品商城"
/// type : "1"
/// appId : "10088"
/// method : "1"
/// h5Config : {"link":"https://shop42983521.m.youzan.com/v2/showcase/homepage?kdt_id=42791353&scan=3&from=kdt"}
/// imageUrl : "http://zyx-local.oss-cn-shanghai.aliyuncs.com/zk/2021/2/22/94ed1fd83efc4df588efd15c5c48d616.png"
/// spConfig : null
/// appSecret : "10088"
/// pagesConfig : null
/// widgetConfig : null

class DataInfo {
  String _id;
  String _num;
  String _name;
  String _type;
  String _appId;
  String _method;
  H5Config _h5Config;
  String _imageUrl;
  dynamic _spConfig;
  String _appSecret;
  dynamic _pagesConfig;
  dynamic _widgetConfig;

  String get id => _id;
  String get num => _num;
  String get name => _name;
  String get type => _type;
  String get appId => _appId;
  String get method => _method;
  H5Config get h5Config => _h5Config;
  String get imageUrl => _imageUrl;
  dynamic get spConfig => _spConfig;
  String get appSecret => _appSecret;
  dynamic get pagesConfig => _pagesConfig;
  dynamic get widgetConfig => _widgetConfig;

  DataInfo({
      String id, 
      String num, 
      String name, 
      String type, 
      String appId, 
      String method, 
      H5Config h5Config, 
      String imageUrl, 
      dynamic spConfig, 
      String appSecret, 
      dynamic pagesConfig, 
      dynamic widgetConfig}){
    _id = id;
    _num = num;
    _name = name;
    _type = type;
    _appId = appId;
    _method = method;
    _h5Config = h5Config;
    _imageUrl = imageUrl;
    _spConfig = spConfig;
    _appSecret = appSecret;
    _pagesConfig = pagesConfig;
    _widgetConfig = widgetConfig;
}

  DataInfo.fromJson(dynamic json) {
    _id = json["id"];
    _num = json["num"];
    _name = json["name"];
    _type = json["type"];
    _appId = json["appId"];
    _method = json["method"];
    _h5Config = json["h5Config"] != null ? H5Config.fromJson(json["h5Config"]) : null;
    _imageUrl = json["imageUrl"];
    _spConfig = json["spConfig"];
    _appSecret = json["appSecret"];
    _pagesConfig = json["pagesConfig"];
    _widgetConfig = json["widgetConfig"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["num"] = _num;
    map["name"] = _name;
    map["type"] = _type;
    map["appId"] = _appId;
    map["method"] = _method;
    if (_h5Config != null) {
      map["h5Config"] = _h5Config.toJson();
    }
    map["imageUrl"] = _imageUrl;
    map["spConfig"] = _spConfig;
    map["appSecret"] = _appSecret;
    map["pagesConfig"] = _pagesConfig;
    map["widgetConfig"] = _widgetConfig;
    return map;
  }

}

/// link : "https://shop42983521.m.youzan.com/v2/showcase/homepage?kdt_id=42791353&scan=3&from=kdt"

// class H5Config {
//   String _link;
//
//   String get link => _link;
//
//   H5Config({
//       String link}){
//     _link = link;
// }
//
//   H5Config.fromJson(dynamic json) {
//     _link = json["link"];
//   }
//
//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["link"] = _link;
//     return map;
//   }
//
// }