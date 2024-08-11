part of 'movie_bloc.dart';

@immutable
sealed class MovieEvent {}

class GetPlayingFetchEvent extends MovieEvent {
  GetPlayingFetchEvent();
}

class GetPopularFetchEvent extends MovieEvent {
  GetPopularFetchEvent();
}

class GetDetailMovieFetchEvent extends MovieEvent {
  final String movieId;
  GetDetailMovieFetchEvent({required this.movieId});
}

class GetMovieTrailerFetchEvent extends MovieEvent {
  final String movieId;
  GetMovieTrailerFetchEvent({required this.movieId});
}

class GetMovieCastFetchEvent extends MovieEvent {
  final String movieId;
  GetMovieCastFetchEvent({required this.movieId});
}

class GetMovieReviewFetchEvent extends MovieEvent {
  final String movieId;
  GetMovieReviewFetchEvent({required this.movieId});
}

class GetMovieSimilarFetchEvent extends MovieEvent {
  final String movieId;
  GetMovieSimilarFetchEvent({required this.movieId});
}