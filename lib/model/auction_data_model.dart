import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

// class AuctionDataModel {
//   String id;
//   String displayName;
//   String description;
//   String category;
//   String poster;
//   String location;
//   String closingDate;
//   String openingDate;

//   AuctionDataModel({
//     required this.id,
//     required this.displayName,
//     required this.description,
//     required this.category,
//     required this.poster,
//     required this.location,
//     required this.closingDate,
//     required this.openingDate,
//   });

//   // factory AuctionDataModel.fromJson(Map<String, dynamic> json) =>
//   //     AuctionDataModel(
//   //       id: json[""],
//   //       displayName: json["DisplayName"],
//   //       description: json["Description"],
//   //       category: json["Category"],
//   //       poster: json["Poster"],
//   //       location: json["Location"],
//   //       closingDate: json["Ending_Date"],
//   //       openingDate: json["Starting_Date"],
//   //     );

//   static final empty = AuctionDataModel(
//       id: '',
//       displayName: '',
//       description: '',
//       category: '',
//       poster: '',
//       location: '',
//       closingDate: '',
//       openingDate: '');

//   AuctionDataModel copyWith({
//     String? id,
//     String? displayName,
//     String? description,
//     String? category,
//     String? poster,
//     String? location,
//     String? closingDate,
//     String? openingDate,
//   }) {
//     return AuctionDataModel(
//         id: id ?? this.id,
//         displayName: displayName ?? this.displayName,
//         description: description ?? this.description,
//         category: category ?? this.category,
//         poster: poster ?? this.poster,
//         location: location ?? this.location,
//         closingDate: closingDate ?? this.closingDate,
//         openingDate: openingDate ?? this.openingDate);
//   }

//   bool get isEmpty => this == AuctionDataModel.empty;

//   bool get isNotEmpty => this != AuctionDataModel.empty;

//   AuctionDataModelEntity toEntity() {
//     return AuctionDataModelEntity(
//       id: id,
//       displayName: displayName,
//       description: description,
//       category: category,
//       poster: poster,
//       location: location,
//       closingDate: closingDate,
//       openingDate: openingDate,
//     );
//   }

//   static AuctionDataModel fromEntity(AuctionDataModelEntity entity) {
//     return AuctionDataModel(
//         id: entity.id,
//         displayName: entity.displayName,
//         description: entity.description,
//         category: entity.category,
//         poster: entity.poster,
//         location: entity.location,
//         closingDate: entity.closingDate,
//         openingDate: entity.openingDate);
//   }

//   // Map<String, dynamic> toJson() => {
//   //       "DisplayName": displayName,
//   //       "Description": description,
//   //       "Category": category,
//   //       "Poster": poster,
//   //       "Location": location,
//   //       "Ending_Date": closingDate,
//   //       "Starting_Date": openingDate,
//   //     };
// }

class AuctionDataModelEntity extends Equatable {
  final String id;
  final String displayName;
  final String description;
  final String category;
  final String poster;
  final String location;
  final String closingDate;
  final String openingDate;
  const AuctionDataModelEntity({
    required this.id,
    required this.displayName,
    required this.description,
    required this.category,
    required this.poster,
    required this.location,
    required this.closingDate,
    required this.openingDate,
  });

  // Map<String, Object?> toDocument() {
  //   return {
  //     "id": id,
  //     "DisplayName": displayName,
  //     "Description": description,
  //     "Category": category,
  //     "Poster": poster,
  //     "Location": location,
  //     "Closing_Date": closingDate,
  //     "Opening_Date": openingDate,
  //   };
  // }

  factory AuctionDataModelEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final doc = snapshot.data();
    AuctionDataModelEntity auctionDataModelEntity = AuctionDataModelEntity(
      id: doc?['id'] ?? '',
      category: doc?['Category'] ?? '',
      description: doc?['Description'] ?? '',
      closingDate: doc?['Closing_Date'] ?? '',
      openingDate: doc?['Opening_Date'] ?? '',
      poster: doc?['Poster'] ?? '',
      location: doc?['Location'] ?? '',
      displayName: doc?['DisplayName'] ?? '',
    );
    return auctionDataModelEntity;
  }

  @override
  List<Object?> get props => [
        id,
        description,
        displayName,
        description,
        category,
        poster,
        location,
        closingDate,
        openingDate
      ];

  // @override
  // String toString() {
  //   return '''
  //   AuctionDataModelEntity:{
  //     id: $id,
  //     DisplayName: $displayName,
  //     Description: $description,
  //     Category: $category,
  //     Poster: $poster,
  //     Location: $location,
  //     Closing_Date: $closingDate,
  //     Opening_Date: $openingDate
  //   }
  // ''';
  // }
}
