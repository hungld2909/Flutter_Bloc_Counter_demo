import '../services/player_api_provider.dart';
import '../models/api_models.dart';
class PlayerRepository {
  PlayerApiProvider _playerApiProvider = PlayerApiProvider();

  Future<List<Players>> fetchPlayersByCountry(String countryId) =>_playerApiProvider.fetchPlayersByCountry(countryId);
}