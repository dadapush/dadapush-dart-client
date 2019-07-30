part of dadapush_client.api;

class Result {
  
  int code = null;
  
  Object data = null;
  
  String errmsg = null;
  Result();

  @override
  String toString() {
    return 'Result[code=$code, data=$data, errmsg=$errmsg, ]';
  }

  Result.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
    if (json['data'] == null) {
      data = null;
    } else {
          data = json['data'];
    }
    if (json['errmsg'] == null) {
      errmsg = null;
    } else {
          errmsg = json['errmsg'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (data != null)
      json['data'] = data;
    if (errmsg != null)
      json['errmsg'] = errmsg;
    return json;
  }

  static List<Result> listFromJson(List<dynamic> json) {
    return json == null ? new List<Result>() : json.map((value) => new Result.fromJson(value)).toList();
  }

  static Map<String, Result> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Result>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Result.fromJson(value));
    }
    return map;
  }
}

