import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:themoviedb/features/movies/domain/models/cast_movie_data.dart';
import 'package:themoviedb/features/movies/domain/models/detail_movie_data.dart';
import 'package:themoviedb/features/movies/domain/models/movie_trailer_data.dart';
import 'package:themoviedb/features/movies/domain/models/playing_data.dart';
import 'package:themoviedb/features/movies/domain/models/popular_data.dart';
import 'package:themoviedb/features/movies/domain/models/review_movie_data.dart';
import 'package:themoviedb/features/movies/domain/models/similar_movie_data.dart';
import 'package:themoviedb/features/movies/domain/repository/movie_repo.dart';

part 'movie_event.dart';

part 'movie_state.dart';

@injectable
class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieRepository movieRepository;
  MovieBloc(this.movieRepository) : super(GetPlayingInitial()) {
    on<GetPlayingFetchEvent>(_onGetPlaying);
    on<GetPopularFetchEvent>(_onGetPopular);
    on<GetDetailMovieFetchEvent>(_onGetDetailMovie);
    on<GetMovieTrailerFetchEvent>(_onGetMovieTrailer);
    on<GetMovieCastFetchEvent>(_onGetMovieCast);
    on<GetMovieReviewFetchEvent>(_onGetMovieReview);
    on<GetMovieSimilarFetchEvent>(_onGetMovieSimilar);
  }

  Future<void> _onGetPlaying(
    GetPlayingFetchEvent event,
    Emitter<MovieState> emit,
  ) async {
    emit(GetPlayingFetchingLoadingState());
    final PlayingData? playingData = await movieRepository.getPlayingMovie();
    emit(GetPlayingFetchingSuccessState(playingData: playingData));
  }

  Future<void> _onGetPopular(
      GetPopularFetchEvent event,
      Emitter<MovieState> emit,
      ) async {
    emit(GetPopularFetchingLoadingState());
    final PopularData? popularData = await movieRepository.getPopularMovie();
    emit(GetPopularFetchingSuccessState(popularData));
  }

  Future<void> _onGetDetailMovie(
      GetDetailMovieFetchEvent event,
      Emitter<MovieState> emit,
      ) async {
    emit(GetDetailMovieFetchingLoadingState());
    final DetailMovieData? movieData = await movieRepository.getDetailMovie(event.movieId);
    emit(GetDetailMovieFetchingSuccessState(movieData));
  }

  Future<void> _onGetMovieTrailer(
      GetMovieTrailerFetchEvent event,
      Emitter<MovieState> emit,
      ) async {
    emit(GetMovieTrailerFetchingLoadingState());
    final MovieTrailerData? trailerData = await movieRepository.getMovieTrailer(event.movieId);
    emit(GetMovieTrailerFetchingSuccessState(trailerData));
  }

  Future<void> _onGetMovieCast(
      GetMovieCastFetchEvent event,
      Emitter<MovieState> emit,
      ) async {
    emit(GetMovieCastFetchingLoadingState());
    final CastMovieData? castData = await movieRepository.getCastMovie(event.movieId);
    emit(GetMovieCastFetchingSuccessState(castData));
  }

  Future<void> _onGetMovieReview(
      GetMovieReviewFetchEvent event,
      Emitter<MovieState> emit,
      ) async {
    emit(GetMovieReviewFetchingLoadingState());
    final ReviewMovieData? reviewData = await movieRepository.getReviewMovie(event.movieId);
    emit(GetMovieReviewFetchingSuccessState(reviewData));
  }

  Future<void> _onGetMovieSimilar(
      GetMovieSimilarFetchEvent event,
      Emitter<MovieState> emit,
      ) async {
    emit(GetMovieSimilarFetchingLoadingState());
    final SimilarMovieData? similarData = await movieRepository.getSimilarMovie(event.movieId);
    emit(GetMovieSimilarFetchingSuccessState(similarData));
  }
}
