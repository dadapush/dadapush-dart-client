# dadapush_client
DaDaPush: Real-time Notifications App

Send real-time notifications through our API without coding and maintaining your own app for iOS or Android devices.

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Build package: org.openapitools.codegen.languages.DartClientCodegen
For more information, please visit [https://www.dadapush.com](https://www.dadapush.com)

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: dadapush_client
version: 1.0.0
description: DaDaPush Client For Dart
dependencies:
  dadapush_client:
    git: https://github.com/dadapush/dadapush-dart-client.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  dadapush_client:
    path: /path/to/dadapush_client
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:dadapush_client/api.dart';


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

## run test
```shell script
pub run test -p "chrome" -n 'test createMessage'
pub run test -p "chrome" -n 'test deleteMessage'
pub run test -p "chrome" -n 'test getMessageOne'
pub run test -p "chrome" -n 'test getMessageList'
```


## Documentation for API Endpoints

All URIs are relative to *https://www.dadapush.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DaDaPushMessageApi* | [**createMessage**](doc//DaDaPushMessageApi.md#createmessage) | **POST** /api/v1/message | push Message to a Channel
*DaDaPushMessageApi* | [**deleteMessage**](doc//DaDaPushMessageApi.md#deletemessage) | **DELETE** /api/v1/message/{messageId} | delete a Channel Message
*DaDaPushMessageApi* | [**getMessage**](doc//DaDaPushMessageApi.md#getmessage) | **GET** /api/v1/message/{messageId} | get a Channel Message
*DaDaPushMessageApi* | [**getMessages**](doc//DaDaPushMessageApi.md#getmessages) | **GET** /api/v1/messages | get Message List


## Documentation For Models

 - [Action](doc//Action.md)
 - [MessageObject](doc//MessageObject.md)
 - [MessagePushRequest](doc//MessagePushRequest.md)
 - [MessagePushResponse](doc//MessagePushResponse.md)
 - [PageResponseOfMessageObject](doc//PageResponseOfMessageObject.md)
 - [Result](doc//Result.md)
 - [ResultOfMessageObject](doc//ResultOfMessageObject.md)
 - [ResultOfMessagePushResponse](doc//ResultOfMessagePushResponse.md)
 - [ResultOfPageResponseOfMessageObject](doc//ResultOfPageResponseOfMessageObject.md)


## Author

contacts@dadapush.com



