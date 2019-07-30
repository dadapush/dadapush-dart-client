part of dadapush_client.api;

class ResultOfMessagePushResponse {
  
  int code = null;
  
  MessagePushResponse data = null;
  
  String errmsg = null;
  ResultOfMessagePushResponse();

  @override
  String toString() {
    return 'ResultOfMessagePushResponse[code=$code, data=$data, errmsg=$errmsg, ]';
  }

  ResultOfMessagePushResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
    if (json['data'] == null) {
      data = null;
    } else {
      data = new MessagePushResponse.fromJson(json['data']);
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

  static List<ResultOfMessagePushResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResultOfMessagePushResponse>() : json.map((value) => new ResultOfMessagePushResponse.fromJson(value)).toList();
  }

  static Map<String, ResultOfMessagePushResponse> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResultOfMessagePushResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResultOfMessagePushResponse.fromJson(value));
    }
    return map;
  }
}

