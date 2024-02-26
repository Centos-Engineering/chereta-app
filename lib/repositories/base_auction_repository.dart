import 'package:auction_app/model/auction_data_model.dart';

abstract class BaseProductRepository {
  Stream<List<AuctionDataModelEntity>> getAuctions();
}
