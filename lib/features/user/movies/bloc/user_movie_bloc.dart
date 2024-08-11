import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/add_favorite_data.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/add_watchlist_data.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/favorite_data.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/watchlist_data.dart';
import 'package:themoviedb/features/user/movies/domain/domain/repository/user_movie_repo.dart';

part 'user_movie_event.dart';
part 'user_movie_state.dart';

@injectable
class UserMovieBloc extends Bloc<UserMovieEvent, UserMovieState> {
  final UserMovieRepository userMovieRepository;
  UserMovieBloc(this.userMovieRepository) : super(GetWatchlistMovieInitial()) {
    on<GetWatchlistFetchEvent>(_onGetWatchlist);
    on<AddWatchlistFetchEvent>(_onAddWatchlist);
    on<GetFavoriteFetchEvent>(_onGetFavorite);
    on<AddFavoriteFetchEvent>(_onAddFavorite);
  }

  Future<void> _onGetWatchlist(
      GetWatchlistFetchEvent event,
      Emitter<UserMovieState> emit,
      ) async {
    emit(GetWatchlistFetchingMovieLoadingState());
    final WatchlistData? watchlistData = await userMovieRepository.getWatchlistMovie(event.accId);
    emit(GetWatchlistFetchingMovieSuccessState(watchlistData));
  }

  Future<void> _onAddWatchlist(
      AddWatchlistFetchEvent event,
      Emitter<UserMovieState> emit,
      ) async {
    emit(AddWatchlistFetchingMovieLoadingState());
    final AddWatchlistData? watchlistData = await userMovieRepository.addWatchlistMovie(event.accId, event.watchlistData);
    emit(AddWatchlistFetchingMovieSuccessState(watchlistData));
  }

  Future<void> _onGetFavorite(
      GetFavoriteFetchEvent event,
      Emitter<UserMovieState> emit,
      ) async {
    emit(GetFavoriteFetchingMovieLoadingState());
    final FavoriteData? favoriteData = await userMovieRepository.getFavoriteMovie(event.accId);
    emit(GetFavoriteFetchingMovieSuccessState(favoriteData));
  }

  Future<void> _onAddFavorite(
      AddFavoriteFetchEvent event,
      Emitter<UserMovieState> emit,
      ) async {
    emit(AddFavoriteFetchingMovieLoadingState());
    final AddFavoriteData? favoriteData = await userMovieRepository.addFavoriteMovie(event.accId, event.favoriteData);
    emit(AddFavoriteFetchingMovieSuccessState(favoriteData));
  }
}
