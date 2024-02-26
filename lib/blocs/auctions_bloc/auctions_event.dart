part of 'auctions_bloc.dart';

abstract class AuctionsEvent extends Equatable {
  const AuctionsEvent();

  @override
  List<Object> get props => [];
}

class GetAuctions extends AuctionsEvent {
  final List<AuctionDataModelEntity> auctions;

  const GetAuctions(this.auctions);

  @override
  List<Object> get props => [auctions];
}
