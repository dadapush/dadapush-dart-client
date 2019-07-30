# DaDaPushClient.api.DaDaPushMessageApi

## Load the API package
```dart
import 'package:DaDaPushClient/api.dart';
```

All URIs are relative to *https://www.dadapush.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMessage**](DaDaPushMessageApi.md#createMessage) | **POST** /api/v1/message | push Message to a Channel
[**deleteMessage**](DaDaPushMessageApi.md#deleteMessage) | **DELETE** /api/v1/message/{messageId} | delete a Channel Message
[**getMessage**](DaDaPushMessageApi.md#getMessage) | **GET** /api/v1/message/{messageId} | get a Channel Message
[**getMessages**](DaDaPushMessageApi.md#getMessages) | **GET** /api/v1/messages | get Message List


# **createMessage**
> ResultOfMessagePushResponse createMessage(body, channelToken)

push Message to a Channel

<h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>30 request per 1m</li><li>500 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```dart
import 'package:DaDaPushClient/api.dart';

var api_instance = new DaDaPushMessageApi();
var body = new MessagePushRequest(); // MessagePushRequest | body
var channelToken = channelToken_example; // String | see: https://www.dadapush.com/channel/list

try { 
    var result = api_instance.createMessage(body, channelToken);
    print(result);
} catch (e) {
    print("Exception when calling DaDaPushMessageApi->createMessage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MessagePushRequest**](MessagePushRequest.md)| body | 
 **channelToken** | **String**| see: https://www.dadapush.com/channel/list | [optional] [default to null]

### Return type

[**ResultOfMessagePushResponse**](ResultOfMessagePushResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMessage**
> Result deleteMessage(messageId, channelToken)

delete a Channel Message

<h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```dart
import 'package:DaDaPushClient/api.dart';

var api_instance = new DaDaPushMessageApi();
var messageId = 789; // int | messageId
var channelToken = channelToken_example; // String | see: https://www.dadapush.com/channel/list

try { 
    var result = api_instance.deleteMessage(messageId, channelToken);
    print(result);
} catch (e) {
    print("Exception when calling DaDaPushMessageApi->deleteMessage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **int**| messageId | [default to null]
 **channelToken** | **String**| see: https://www.dadapush.com/channel/list | [optional] [default to null]

### Return type

[**Result**](Result.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessage**
> ResultOfMessageObject getMessage(messageId, channelToken)

get a Channel Message

<h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```dart
import 'package:DaDaPushClient/api.dart';

var api_instance = new DaDaPushMessageApi();
var messageId = 789; // int | messageId
var channelToken = channelToken_example; // String | see: https://www.dadapush.com/channel/list

try { 
    var result = api_instance.getMessage(messageId, channelToken);
    print(result);
} catch (e) {
    print("Exception when calling DaDaPushMessageApi->getMessage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **int**| messageId | [default to null]
 **channelToken** | **String**| see: https://www.dadapush.com/channel/list | [optional] [default to null]

### Return type

[**ResultOfMessageObject**](ResultOfMessageObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessages**
> ResultOfPageResponseOfMessageObject getMessages(page, pageSize, channelToken)

get Message List

<h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>45 request per 1m</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```dart
import 'package:DaDaPushClient/api.dart';

var api_instance = new DaDaPushMessageApi();
var page = 1; // int | greater than 1
var pageSize = 10; // int | range is 1,50
var channelToken = channelToken_example; // String | see: https://www.dadapush.com/channel/list

try { 
    var result = api_instance.getMessages(page, pageSize, channelToken);
    print(result);
} catch (e) {
    print("Exception when calling DaDaPushMessageApi->getMessages: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| greater than 1 | [default to 1]
 **pageSize** | **int**| range is 1,50 | [default to 10]
 **channelToken** | **String**| see: https://www.dadapush.com/channel/list | [optional] [default to null]

### Return type

[**ResultOfPageResponseOfMessageObject**](ResultOfPageResponseOfMessageObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

