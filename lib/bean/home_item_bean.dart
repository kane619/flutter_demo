class HomeItemBean {
  String _id;
  String _showType;
  TemplateJson _templateJson;
  String get id => _id;
  String get showType => _showType;
  TemplateJson get templateJson => _templateJson;

  HomeItemBean({
     String id,
     String showType,
     TemplateJson templateJson
   })
  {
    _id = id;
    _showType = showType;
    _templateJson = templateJson;
  }

  HomeItemBean.fromJson(dynamic json) {
    _id = json["id"];
    _showType = json["showType"];
    _templateJson = json["templateJson"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["showType"] = _showType;
    map["templateJson"] = _templateJson;
    return map;
  }

}

class TemplateJson {
   int code;
}

// class TemplateJson




