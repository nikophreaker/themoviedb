import 'package:themoviedb/features/movies/domain/models/cast_movie_data.dart';
import 'package:themoviedb/features/movies/domain/models/detail_movie_data.dart';
import 'package:themoviedb/features/movies/domain/models/movie_trailer_data.dart';
import 'package:themoviedb/features/movies/domain/models/playing_data.dart';
import 'package:themoviedb/features/movies/domain/models/popular_data.dart';
import 'package:themoviedb/features/movies/domain/models/review_movie_data.dart';
import 'package:themoviedb/features/movies/domain/models/similar_movie_data.dart';

abstract class MovieProvider {
  Future<PlayingData?> getPlayingMovie();
  Future<PopularData?> getPopularMovie();

  Future<DetailMovieData?> getDetailMovie(String movieId);
  Future<MovieTrailerData?> getMovieTrailer(String movieId);
  Future<CastMovieData?> getCastMovie(String movieId);
  Future<ReviewMovieData?> getReviewMovie(String movieId);
  Future<SimilarMovieData?> getSimilarMovie(String movieId);
}