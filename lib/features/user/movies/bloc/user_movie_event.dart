part of 'user_movie_bloc.dart';

@immutable
sealed class UserMovieEvent {}

class GetWatchlistFetchEvent extends UserMovieEvent {
  final String? accId;
  GetWatchlistFetchEvent({required this.accId});
}

class AddWatchlistFetchEvent extends UserMovieEvent {
  final String? accId;
  final Map<String, dynamic> watchlistData;
  AddWatchlistFetchEvent({required this.accId, required this.watchlistData});
}

class GetFavoriteFetchEvent extends UserMovieEvent {
  final String? accId;
  GetFavoriteFetchEvent({required this.accId});
}

class AddFavoriteFetchEvent extends UserMovieEvent {
  final String? accId;
  final Map<String, dynamic> favoriteData;
  AddFavoriteFetchEvent({required this.accId, required this.favoriteData});
}
