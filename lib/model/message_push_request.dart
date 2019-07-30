part of dadapush_client.api;

class MessagePushRequest {
  /* action size range is 0,3 */
  List<Action> actions = [];
  /* message content */
  String content = null;
  /* when value is false, will not send client push */
  bool needPush = null;
  /* message title */
  String title = null;
  MessagePushRequest();

  @override
  String toString() {
    return 'MessagePushRequest[actions=$actions, content=$content, needPush=$needPush, title=$title, ]';
  }

  MessagePushRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actions'] == null) {
      actions = null;
    } else {
      actions = Action.listFromJson(json['actions']);
    }
    if (json['content'] == null) {
      content = null;
    } else {
          content = json['content'];
    }
    if (json['needPush'] == null) {
      needPush = null;
    } else {
          needPush = json['needPush'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actions != null)
      json['actions'] = actions;
    if (content != null)
      json['content'] = content;
    if (needPush != null)
      json['needPush'] = needPush;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<MessagePushRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<MessagePushRequest>() : json.map((value) => new MessagePushRequest.fromJson(value)).toList();
  }

  static Map<String, MessagePushRequest> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, MessagePushRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new MessagePushRequest.fromJson(value));
    }
    return map;
  }
}

