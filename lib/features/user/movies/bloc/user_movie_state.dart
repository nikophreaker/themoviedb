part of 'user_movie_bloc.dart';

@immutable
sealed class UserMovieState {}

final class GetWatchlistMovieInitial extends UserMovieState {}
final class GetWatchlistFetchingMovieLoadingState extends UserMovieState {}
final class GetWatchlistFetchingMovieErrorState extends UserMovieState {}
final class GetWatchlistFetchingMovieSuccessState extends UserMovieState {
  final WatchlistData? watchlistData;
  GetWatchlistFetchingMovieSuccessState(this.watchlistData);
}

final class AddWatchlistMovieInitial extends UserMovieState {}
final class AddWatchlistFetchingMovieLoadingState extends UserMovieState {}
final class AddWatchlistFetchingMovieErrorState extends UserMovieState {}
final class AddWatchlistFetchingMovieSuccessState extends UserMovieState {
  final AddWatchlistData? addWatchlistData;
  AddWatchlistFetchingMovieSuccessState(this.addWatchlistData);
}

final class GetFavoriteMovieInitial extends UserMovieState {}
final class GetFavoriteFetchingMovieLoadingState extends UserMovieState {}
final class GetFavoriteFetchingMovieErrorState extends UserMovieState {}
final class GetFavoriteFetchingMovieSuccessState extends UserMovieState {
  final FavoriteData? favoriteData;
  GetFavoriteFetchingMovieSuccessState(this.favoriteData);
}

final class AddFavoriteMovieInitial extends UserMovieState {}
final class AddFavoriteFetchingMovieLoadingState extends UserMovieState {}
final class AddFavoriteFetchingMovieErrorState extends UserMovieState {}
final class AddFavoriteFetchingMovieSuccessState extends UserMovieState {
  final AddFavoriteData? addFavoriteData;
  AddFavoriteFetchingMovieSuccessState(this.addFavoriteData);
}
