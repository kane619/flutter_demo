class BaseBean<T> {
  T data;
  int errorCode;
  String errorMsg;

  BaseBean({this.data, this.errorCode, this.errorMsg});

  factory BaseBean.fromJson(Map<String, dynamic> json) {
    //单例模式
    return BaseBean(
      data: json['data'],
      errorCode: json['code'],
      errorMsg: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['code'] = this.errorCode;
    data['message'] = this.errorMsg;
    return data;
  }
}
