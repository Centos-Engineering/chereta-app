// import 'package:auction_app/model/auction_data_model.dart';
// import 'package:auction_app/repositories/base_auction_repository.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

// class AuctionRepository extends BaseProductRepository {
//   final FirebaseFirestore _firebaseFirestore;
//   AuctionRepository({FirebaseFirestore? firebaseFirestore})
//       : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

//   @override
//   Stream<List<AuctionDataModelEntity>> getAuctions() {
//     return _firebaseFirestore.collection("All").snapshots().map((snapshot) {
//       return snapshot.docs
//           .map((doc) => AuctionDataModelEntity.fromSnapshot(doc))
//           .toList();
//     });
//   }
// }
