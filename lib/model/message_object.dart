part of DaDaPushClient.api;

class MessageObject {
  /* action size range is 0,3 */
  List<Action> actions = [];
  
  String channelName = null;
  
  String content = null;
  
  String createdAt = null;
  
  int id = null;
  
  String title = null;
  MessageObject();

  @override
  String toString() {
    return 'MessageObject[actions=$actions, channelName=$channelName, content=$content, createdAt=$createdAt, id=$id, title=$title, ]';
  }

  MessageObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actions'] == null) {
      actions = null;
    } else {
      actions = Action.listFromJson(json['actions']);
    }
    if (json['channelName'] == null) {
      channelName = null;
    } else {
          channelName = json['channelName'];
    }
    if (json['content'] == null) {
      content = null;
    } else {
          content = json['content'];
    }
    if (json['createdAt'] == null) {
      createdAt = null;
    } else {
          createdAt = json['createdAt'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (channelName != null)
      json['channelName'] = channelName;
    if (content != null)
      json['content'] = content;
    if (createdAt != null)
      json['createdAt'] = createdAt;
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<MessageObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<MessageObject>() : json.map((value) => new MessageObject.fromJson(value)).toList();
  }

  static Map<String, MessageObject> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, MessageObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new MessageObject.fromJson(value));
    }
    return map;
  }
}

