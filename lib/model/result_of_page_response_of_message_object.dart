part of DaDaPushClient.api;

class ResultOfPageResponseOfMessageObject {
  
  int code = null;
  
  PageResponseOfMessageObject data = null;
  
  String errmsg = null;
  ResultOfPageResponseOfMessageObject();

  @override
  String toString() {
    return 'ResultOfPageResponseOfMessageObject[code=$code, data=$data, errmsg=$errmsg, ]';
  }

  ResultOfPageResponseOfMessageObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
    if (json['data'] == null) {
      data = null;
    } else {
      data = new PageResponseOfMessageObject.fromJson(json['data']);
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

  static List<ResultOfPageResponseOfMessageObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResultOfPageResponseOfMessageObject>() : json.map((value) => new ResultOfPageResponseOfMessageObject.fromJson(value)).toList();
  }

  static Map<String, ResultOfPageResponseOfMessageObject> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResultOfPageResponseOfMessageObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResultOfPageResponseOfMessageObject.fromJson(value));
    }
    return map;
  }
}

