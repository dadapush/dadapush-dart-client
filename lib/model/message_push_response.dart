part of dadapush_client.api;

class MessagePushResponse {
  
  int messageId = null;
  MessagePushResponse();

  @override
  String toString() {
    return 'MessagePushResponse[messageId=$messageId, ]';
  }

  MessagePushResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['messageId'] == null) {
      messageId = null;
    } else {
          messageId = json['messageId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (messageId != null)
      json['messageId'] = messageId;
    return json;
  }

  static List<MessagePushResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<MessagePushResponse>() : json.map((value) => new MessagePushResponse.fromJson(value)).toList();
  }

  static Map<String, MessagePushResponse> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, MessagePushResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new MessagePushResponse.fromJson(value));
    }
    return map;
  }
}

