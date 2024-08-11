import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/add_favorite_data.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/add_watchlist_data.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/favorite_data.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/watchlist_data.dart';
import 'package:themoviedb/features/user/movies/domain/domain/repository/user_movie_provider.dart';

@injectable
class UserMovieRepository extends UserMovieProvider {
  final Dio dio;

  UserMovieRepository(this.dio);

  @override
  Future<FavoriteData?> getFavoriteMovie(String? accId) async {
    try {
      Response response = await dio.get("account/$accId/favorite/movies");
      return favoriteDataFromJson(response.toString());
    } catch (error, stacktrace) {
      throw Exception("Error occured: $error , Stacktrace: $stacktrace");
    }
  }

  @override
  Future<WatchlistData?> getWatchlistMovie(String? accId) async {
    try {
      Response response = await dio.get("account/$accId/watchlist/movies");
      return watchlistDataFromJson(response.toString());
    } catch (error, stacktrace) {
      throw Exception("Error occured: $error , Stacktrace: $stacktrace");
    }
  }

  @override
  Future<AddFavoriteData?> addFavoriteMovie(
      String? accId, Map<String, dynamic> favoriteData) async {
    try {
      Response response = await dio.post("account/$accId/favorite",
          data: jsonEncode(favoriteData));
      return addFavoriteDataFromJson(response.toString());
    } catch (error, stacktrace) {
      throw Exception("Error occured: $error , Stacktrace: $stacktrace");
    }
  }

  @override
  Future<AddWatchlistData?> addWatchlistMovie(
      String? accId, Map<String, dynamic> watchlistData) async {
    try {
      Response response = await dio.post("account/$accId/watchlist",
          data: jsonEncode(watchlistData));
      return addWatchlistDataFromJson(response.toString());
    } catch (error, stacktrace) {
      throw Exception("Error occured: $error , Stacktrace: $stacktrace");
    }
  }
}
