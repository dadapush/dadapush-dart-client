# DaDaPushClient
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
name: DaDaPushClient
version: 1.0.0
description: DaDaPush Client For Dart
dependencies:
  DaDaPushClient:
    git: https://github.com/dadapush/dadapush-dart-client.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  DaDaPushClient:
    path: /path/to/DaDaPushClient
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:DaDaPushClient/api.dart';


var api_instance = new DaDaPushMessageApi();
var body = new MessagePushRequest(); // MessagePushRequest | body
var xChannelToken = xChannelToken_example; // String | see: https://www.dadapush.com/channel/list

try {
    var result = api_instance.createMessage(body, xChannelToken);
    print(result);
} catch (e) {
    print("Exception when calling DaDaPushMessageApi->createMessage: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://www.dadapush.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DaDaPushMessageApi* | [**createMessage**](docs//DaDaPushMessageApi.md#createmessage) | **POST** /api/v1/message | push Message to a Channel
*DaDaPushMessageApi* | [**deleteMessage**](docs//DaDaPushMessageApi.md#deletemessage) | **DELETE** /api/v1/message/{messageId} | delete a Channel Message
*DaDaPushMessageApi* | [**getMessage**](docs//DaDaPushMessageApi.md#getmessage) | **GET** /api/v1/message/{messageId} | get a Channel Message
*DaDaPushMessageApi* | [**getMessages**](docs//DaDaPushMessageApi.md#getmessages) | **GET** /api/v1/messages | get Message List


## Documentation For Models

 - [Action](docs//Action.md)
 - [MessageObject](docs//MessageObject.md)
 - [MessagePushRequest](docs//MessagePushRequest.md)
 - [MessagePushResponse](docs//MessagePushResponse.md)
 - [PageResponseOfMessageObject](docs//PageResponseOfMessageObject.md)
 - [Result](docs//Result.md)
 - [ResultOfMessageObject](docs//ResultOfMessageObject.md)
 - [ResultOfMessagePushResponse](docs//ResultOfMessagePushResponse.md)
 - [ResultOfPageResponseOfMessageObject](docs//ResultOfPageResponseOfMessageObject.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author

contacts@dadapush.com


