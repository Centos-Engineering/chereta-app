// To parse this JSON data, do
//
//     final mongoDbModel = mongoDbModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongoDbModel mongoDbModelFromJson(String str) =>
    MongoDbModel.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel {
  ObjectId id;
  String name;
  String description;
  String category;
  String time;
  String poster;
  String location;
  String closingDate;
  String openingDate;

  MongoDbModel({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.time,
    required this.poster,
    required this.location,
    required this.closingDate,
    required this.openingDate,
  });

  factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
        id: json["_id"],
        name: json["name"],
        description: json["description"],
        category: json["category"],
        time: json["time"],
        poster: json["poster"],
        location: json["location"],
        closingDate: json["closingDate"],
        openingDate: json["openingDate"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "description": description,
        "category": category,
        "time": time,
        "poster": poster,
        "location": location,
        "closingDate": closingDate,
        "openingDate": openingDate,
      };
}
