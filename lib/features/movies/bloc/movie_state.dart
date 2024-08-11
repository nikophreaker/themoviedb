part of 'movie_bloc.dart';

@immutable
sealed class MovieState {}

final class GetPlayingInitial extends MovieState {}

final class GetPlayingFetchingLoadingState extends MovieState {}

final class GetPlayingFetchingErrorState extends MovieState {}

final class GetPlayingFetchingSuccessState extends MovieState {
  final PlayingData? playingData;
  GetPlayingFetchingSuccessState({required this.playingData});
}

final class GetPopularInitial extends MovieState {}
final class GetPopularFetchingLoadingState extends MovieState {}
final class GetPopularFetchingErrorState extends MovieState {}
final class GetPopularFetchingSuccessState extends MovieState {
  final PopularData? popularData;
  GetPopularFetchingSuccessState(this.popularData);
}

final class GetDetailMovieInitial extends MovieState {}
final class GetDetailMovieFetchingLoadingState extends MovieState {}
final class GetDetailMovieFetchingErrorState extends MovieState {}
final class GetDetailMovieFetchingSuccessState extends MovieState {
  final DetailMovieData? movieData;
  GetDetailMovieFetchingSuccessState(this.movieData);
}

final class GetMovieTrailerInitial extends MovieState {}
final class GetMovieTrailerFetchingLoadingState extends MovieState {}
final class GetMovieTrailerFetchingErrorState extends MovieState {}
final class GetMovieTrailerFetchingSuccessState extends MovieState {
  final MovieTrailerData? trailerData;
  GetMovieTrailerFetchingSuccessState(this.trailerData);
}

final class GetMovieCastInitial extends MovieState {}
final class GetMovieCastFetchingLoadingState extends MovieState {}
final class GetMovieCastFetchingErrorState extends MovieState {}
final class GetMovieCastFetchingSuccessState extends MovieState {
  final CastMovieData? castData;
  GetMovieCastFetchingSuccessState(this.castData);
}

final class GetMovieReviewInitial extends MovieState {}
final class GetMovieReviewFetchingLoadingState extends MovieState {}
final class GetMovieReviewFetchingErrorState extends MovieState {}
final class GetMovieReviewFetchingSuccessState extends MovieState {
  final ReviewMovieData? reviewData;
  GetMovieReviewFetchingSuccessState(this.reviewData);
}

final class GetMovieSimilarInitial extends MovieState {}
final class GetMovieSimilarFetchingLoadingState extends MovieState {}
final class GetMovieSimilarFetchingErrorState extends MovieState {}
final class GetMovieSimilarFetchingSuccessState extends MovieState {
  final SimilarMovieData? similarData;
  GetMovieSimilarFetchingSuccessState(this.similarData);
}
