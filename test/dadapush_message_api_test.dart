import 'package:dadapush_client/api.dart';
import 'package:test/test.dart';

/// tests for DaDaPushMessageApi
void main() {
  var apiClient = new ApiClient(basePath: "http://127.0.0.1:8080");
  var instance = new DaDaPushMessageApi(apiClient);
  var channelToken = "ctb3lwO6AeiZOwqZgp8BE8980FdNgp0cp6MCf";
  group('tests for DaDaPushMessageApi', () {
    // push Message to a Channel
    //
    // <h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>30 request per 1m</li><li>500 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
    //
    //Future<ResultOfMessagePushResponse> createMessage(MessagePushRequest body, { String channelToken }) async
    test('createMessage', () async {
      var body = new MessagePushRequest();
      body.title = "Good News!";
      body.content = "Good News! DaDaPush releasing new version";
      body.needPush = true;
      var action = new Action();
      action.name = "view";
      action.url = "https://www.dadapush.com/";
      action.type = "link";
      body.actions = [action];
      var response = await instance.createMessage(body, channelToken);
      print(response);
    });

    // delete a Channel Message
    //
    // <h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
    //
    //Future<Result> deleteMessage(int messageId, { String channelToken }) async
    test('deleteMessage', () async {
      var messageId = 227865;
      var response = await instance.deleteMessage(messageId, channelToken);
      print(response);
    });

    // get a Channel Message
    //
    // <h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
    //
    //Future<ResultOfMessageObject> getMessage(int messageId, { String channelToken }) async
    test('getMessageOne', () async {
      var messageId = 227865;
      var response = await instance.getMessage(messageId, channelToken);
      print(response);
    });

    // get Message List
    //
    // <h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>45 request per 1m</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
    //
    //Future<ResultOfPageResponseOfMessageObject> getMessages(int page, int pageSize, { String channelToken }) async
    test('getMessageList', () async {
      var page = 1;
      var pageSize = 10;
      var response = await instance.getMessages(page, pageSize, channelToken);
      print(response);
    });
  });
}
