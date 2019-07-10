part of DaDaPushClient.api;

class Action {
  /* action button name */
  String name = null;
  /* fix value: link */
  String type = null;
  //enum typeEnum {  link,  };{
  /* action url */
  String url = null;
  Action();

  @override
  String toString() {
    return 'Action[name=$name, type=$type, url=$url, ]';
  }

  Action.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Action> listFromJson(List<dynamic> json) {
    return json == null ? new List<Action>() : json.map((value) => new Action.fromJson(value)).toList();
  }

  static Map<String, Action> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Action>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Action.fromJson(value));
    }
    return map;
  }
}

