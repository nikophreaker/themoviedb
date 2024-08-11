import 'package:themoviedb/features/user/movies/domain/domain/models/add_favorite_data.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/add_watchlist_data.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/favorite_data.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/watchlist_data.dart';

abstract class UserMovieProvider {
  Future<WatchlistData?> getWatchlistMovie(String? accId);
  Future<AddWatchlistData?> addWatchlistMovie(String? accId, Map<String, dynamic> watchlistData);
  Future<FavoriteData?> getFavoriteMovie(String? accId);
  Future<AddFavoriteData?> addFavoriteMovie(String? accId, Map<String, dynamic> favoriteData);
}