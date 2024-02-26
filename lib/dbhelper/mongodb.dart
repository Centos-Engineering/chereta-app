import 'dart:developer';

import 'package:auction_app/dbhelper/connection_string.dart';
import 'package:flutter/widgets.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDBConnection {
  static var db, userCollection;
  static connect() async {
    db = await Db.create(mongoConURL);

    await db.open();
    debugPrint(db.toString());
    inspect(db);
    userCollection = db.collection(userCollectionName);
  }

  static Future<List<Map<String, dynamic>>> getData() async {
    final arrData = await userCollection.find().toList();
    return arrData;
  }
}
