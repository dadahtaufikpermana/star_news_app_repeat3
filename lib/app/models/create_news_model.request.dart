// To parse this JSON data, do
//
//     final createNewsModelRequest = createNewsModelRequestFromJson(jsonString);

import 'dart:convert';

CreateNewsModelRequest createNewsModelRequestFromJson(String str) => CreateNewsModelRequest.fromJson(json.decode(str));

String createNewsModelRequestToJson(CreateNewsModelRequest data) => json.encode(data.toJson());

class CreateNewsModelRequest {
  CreateNewsModelRequest({
    required this.title,
    required this.body,
    required this.userId,
  });

  String title;
  String body;
  int userId;

  factory CreateNewsModelRequest.fromJson(Map<String, dynamic> json) => CreateNewsModelRequest(
    title: json["title"],
    body: json["body"],
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "body": body,
    "userId": userId,
  };
}