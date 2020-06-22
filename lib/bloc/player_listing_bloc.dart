import 'package:bloc/bloc.dart';
import '../bloc/player_listing_events.dart';
import '../bloc/player_listing_states.dart';
import '../models/api_models.dart';
import '../services/reponsetory.dart';

class PlayerListingBloc extends Bloc<PlayerListingEvent, PlayerListingState> {
  final PlayerRepository playerRepository;
  PlayerListingBloc({this.playerRepository}) : assert(playerRepository != null);

  @override
  PlayerListingState get initialState => PlayerUninitializedState();

  @override
  Stream<PlayerListingState> mapEventToState(
        PlayerListingState currentState, PlayerListingEvent event) async* {
    print("mapEventToState");
    yield PlayerFetchingState();
    try {
      List<Players> players;
      if (event is CountrySelectedEvent) {
        players = await playerRepository.fetchPlayersByCountry(event.nationModel.countryId);
      } 
      if (players.length == 0) {
        yield PlayerEmptyState();
      } else {
        yield PlayerFetchedState(players: players);
      }
    } catch (_) {
      yield PlayerErrorState();
    }
  }
}
