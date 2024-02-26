// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// import '../model/auction_data_model.dart';
// import 'auctions_repository.dart';

// class PostRepository implements AuctionRepository {
//   final postCollection = FirebaseFirestore.instance.collection('All');

//   @override
//   Future<List<AuctionDataModelEntity>> getAuctions() {
//     try {
//       return postCollection.get().then((value) => value.docs
//           .map((e) => AuctionDataModelEntity.fromEntity(
//               AuctionDataModelEntity.fromDocument(e.data())))
//           .toList());
//     } catch (e) {
//       debugPrint("error: $e");
//       rethrow;
//     }
//   }
// }
