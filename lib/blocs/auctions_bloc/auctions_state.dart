part of 'auctions_bloc.dart';

abstract class AuctionsState extends Equatable {
  const AuctionsState();

  @override
  List<Object> get props => [];
}

final class AuctionsInitial extends AuctionsState {}

final class AuctionsFailure extends AuctionsState {
  final String message;

  const AuctionsFailure(this.message);
}

final class AuctionsLoading extends AuctionsState {}

final class AuctionsSuccess extends AuctionsState {
  final List<AuctionDataModelEntity> auctionDataModel;

  const AuctionsSuccess(this.auctionDataModel);

  @override
  List<Object> get props => [auctionDataModel];
}
