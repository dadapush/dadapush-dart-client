part of DaDaPushClient.api;

class ResultOfMessageObject {
  
  int code = null;
  
  MessageObject data = null;
  
  String errmsg = null;
  ResultOfMessageObject();

  @override
  String toString() {
    return 'ResultOfMessageObject[code=$code, data=$data, errmsg=$errmsg, ]';
  }

  ResultOfMessageObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
    if (json['data'] == null) {
      data = null;
    } else {
      data = new MessageObject.fromJson(json['data']);
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

  static List<ResultOfMessageObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResultOfMessageObject>() : json.map((value) => new ResultOfMessageObject.fromJson(value)).toList();
  }

  static Map<String, ResultOfMessageObject> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResultOfMessageObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResultOfMessageObject.fromJson(value));
    }
    return map;
  }
}

