part of DaDaPushClient.api;

class PageResponseOfMessageObject {
  
  List<MessageObject> content = [];
  
  int totalElements = null;
  
  int totalPages = null;
  PageResponseOfMessageObject();

  @override
  String toString() {
    return 'PageResponseOfMessageObject[content=$content, totalElements=$totalElements, totalPages=$totalPages, ]';
  }

  PageResponseOfMessageObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['content'] == null) {
      content = null;
    } else {
      content = MessageObject.listFromJson(json['content']);
    }
    if (json['totalElements'] == null) {
      totalElements = null;
    } else {
          totalElements = json['totalElements'];
    }
    if (json['totalPages'] == null) {
      totalPages = null;
    } else {
          totalPages = json['totalPages'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    if (totalElements != null)
      json['totalElements'] = totalElements;
    if (totalPages != null)
      json['totalPages'] = totalPages;
    return json;
  }

  static List<PageResponseOfMessageObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<PageResponseOfMessageObject>() : json.map((value) => new PageResponseOfMessageObject.fromJson(value)).toList();
  }

  static Map<String, PageResponseOfMessageObject> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PageResponseOfMessageObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PageResponseOfMessageObject.fromJson(value));
    }
    return map;
  }
}

