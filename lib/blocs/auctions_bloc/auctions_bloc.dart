import 'dart:async';

import 'package:auction_app/model/auction_data_model.dart';
import 'package:auction_app/repositories/auctions_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

part 'auctions_event.dart';
part 'auctions_state.dart';

class AuctionsBloc extends Bloc<AuctionsEvent, AuctionsState> {
  final FirebaseFirestore _firestore;

  StreamSubscription? _auctionSubscription;

  AuctionsBloc(this._firestore) : super(AuctionsInitial()) {
    on<AuctionsFetched>(_onAuctionsFetched);
  }
  void _onAuctionsFetched(
      AuctionsFetched event, Emitter<AuctionsState> emit) async {
    emit(AuctionsLoading());

    try {
      final snapshot = await _firestore.collection('All').get();
      final posts = snapshot.docs
          .map((doc) => AuctionDataModelEntity.fromFirestore(doc))
          .toList();
      emit(AuctionsLoaded(posts));
    } catch (error) {
      emit(AuctionsError(error.toString()));
    }
  }

  // @override
  // Stream<AuctionsState> mapEventToState(
  //   AuctionsEvent event,
  // ) async* {
  //   if (event is GetAuctions) {
  //     yield* _mapGetAuctionsToState();
  //   }
  // }

  // Stream<AuctionsState> _mapGetAuctionsToState() async* {
  //   _auctionSubscription?.cancel();
  //   _auctionSubscription = _auctionRepository
  //       .getAuctions()
  //       .listen((event) => add(GetAuctions(event)));
  // }
}

// class AuctionsBloc extends Bloc<AuctionsEvent, AuctionsState> {
//   AuctionRepository _auctionRepository;
//   AuctionsBloc({required AuctionRepository auctionRepository})
//       : _auctionRepository = auctionRepository,
//         super(AuctionsInitial()) {
//     on<GetAuctions>((event, emit) async {
//       emit(AuctionsLoading());
//       try {
//         List<AuctionDataModel> auctionDataModel =
//             await _auctionRepository.getAuctions();
//         emit(AuctionsSuccess(auctionDataModel));
//       } catch (e) {
//         emit(AuctionsFailure());
//       }
//     });
//   }
// }
