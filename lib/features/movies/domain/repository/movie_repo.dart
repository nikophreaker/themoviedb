import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:themoviedb/features/movies/domain/models/cast_movie_data.dart';
import 'package:themoviedb/features/movies/domain/models/detail_movie_data.dart';
import 'package:themoviedb/features/movies/domain/models/movie_trailer_data.dart';
import 'package:themoviedb/features/movies/domain/models/playing_data.dart';
import 'package:themoviedb/features/movies/domain/models/popular_data.dart';
import 'package:themoviedb/features/movies/domain/models/review_movie_data.dart';
import 'package:themoviedb/features/movies/domain/models/similar_movie_data.dart';
import 'package:themoviedb/features/movies/domain/repository/movie_provider.dart';

@injectable
class MovieRepository implements MovieProvider {
  final Dio dio;
  MovieRepository(this.dio);

  @override
  Future<PlayingData?> getPlayingMovie() async {
    try {
      Response response = await dio.get("movie/now_playing");
      return playingDataFromJson(response.toString());
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }

  }

  @override
  Future<PopularData?> getPopularMovie() async {
    try {
      Response response = await dio.get("movie/popular");
      return popularDataFromJson(response.toString());
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }

  @override
  Future<CastMovieData?> getCastMovie(String movieId) async {
    try {
      Response response = await dio.get("movie/$movieId/credits");
      return castMovieDataFromJson(response.toString());
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }

  @override
  Future<DetailMovieData?> getDetailMovie(String movieId) async {
    try {
      Response response = await dio.get("movie/$movieId");
      return detailMovieDataFromJson(response.toString());
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }

  @override
  Future<MovieTrailerData?> getMovieTrailer(String movieId) async {
    try {
      Response response = await dio.get("movie/$movieId/videos?language=id-ID");
      return movieTrailerDataFromJson(response.toString());
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }

  @override
  Future<ReviewMovieData?> getReviewMovie(String movieId) async {
    try {
      Response response = await dio.get("movie/$movieId/reviews");
      return reviewMovieDataFromJson(response.toString());
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }

  @override
  Future<SimilarMovieData?> getSimilarMovie(String movieId) async {
    try {
      Response response = await dio.get("movie/$movieId/similar");
      return similarMovieDataFromJson(response.toString());
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }

}