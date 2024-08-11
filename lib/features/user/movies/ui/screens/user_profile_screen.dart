import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:themoviedb/core/constants/app/string_constants.dart';
import 'package:themoviedb/core/utils.dart';
import 'package:themoviedb/features/movies/ui/screens/detail_screen.dart';
import 'package:themoviedb/features/user/movies/bloc/user_movie_bloc.dart';
import 'package:themoviedb/features/user/movies/ui/widgets/movie_favorite_item.dart';
import 'package:themoviedb/features/user/movies/ui/widgets/movie_watchlist_item.dart';
import 'package:themoviedb/injection.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final UserMovieBloc userMovieBloc = getIt.get<UserMovieBloc>();

  GetWatchlistFetchingMovieSuccessState? watchlistData;
  GetFavoriteFetchingMovieSuccessState? favoriteData;

  void _callData() {
    userMovieBloc.add(GetFavoriteFetchEvent(accId: null));
    userMovieBloc.add(GetWatchlistFetchEvent(accId: null));
  }

  @override
  void initState() {
    super.initState();
    _callData();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocConsumer(
        bloc: userMovieBloc,
        listener: (context, state) {
          if (state.runtimeType == GetWatchlistFetchingMovieSuccessState) {
            setState(() {
              watchlistData = state as GetWatchlistFetchingMovieSuccessState;
            });
          }
          if (state.runtimeType == GetFavoriteFetchingMovieSuccessState) {
            setState(() {
              favoriteData = state as GetFavoriteFetchingMovieSuccessState;
            });
          }
          if (state.runtimeType == AddWatchlistFetchingMovieSuccessState ||
              state.runtimeType == AddFavoriteFetchingMovieSuccessState) {
            _callData();
          }
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            default:
              return Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Center(
                      child: Icon(
                        size: 100,
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Ujang Jancoek",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      "Watchlist",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  watchlistData != null && favoriteData != null
                      ? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children:
                                watchlistData!.watchlistData!.results!.map(
                              (item) {
                                final faved =
                                    favoriteData!.favoriteData!.results!.isEmpty
                                        ? false
                                        : favoriteData!.favoriteData!.results!
                                            .map((e) => e.id)
                                            .contains(item.id);
                                return MovieWatchlistItem(
                                  movie: item,
                                  faved: faved,
                                  favBtn: () {
                                    final Map<String, dynamic> favoriteData = {
                                      "media_type": "movie",
                                      "media_id": item.id,
                                      "favorite": !faved
                                    };
                                    userMovieBloc.add(
                                      AddFavoriteFetchEvent(
                                        accId: null,
                                        favoriteData: favoriteData,
                                      ),
                                    );
                                  },
                                  watchBtn: () {
                                    final Map<String, dynamic> watchlistData = {
                                      "media_type": "movie",
                                      "media_id": item.id,
                                      "watchlist": false
                                    };
                                    userMovieBloc.add(
                                      AddWatchlistFetchEvent(
                                        accId: null,
                                        watchlistData: watchlistData,
                                      ),
                                    );
                                  },
                                  downloadBtn: () {
                                    var url = StringConstants.moviePotrait +
                                        (item.posterPath ?? "");
                                    Utils utils = Utils();
                                    utils.saveImage(context, url);
                                  },
                                  detailBtn: () async {
                                    await Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailMovieScreen(
                                              movieId: item.id.toString(),
                                            ),
                                      ),
                                    );
                                    // context.goNamed("details", pathParameters: {'movieId': item.id.toString()});
                                  },
                                );
                              },
                            ).toList(),
                          ),
                        )
                      : Container(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      "Favorite",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  favoriteData != null && watchlistData != null
                      ? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: favoriteData!.favoriteData!.results!.map(
                              (item) {
                                final watched = watchlistData!
                                        .watchlistData!.results!.isEmpty
                                    ? false
                                    : watchlistData!.watchlistData!.results!
                                        .map((e) => e.id)
                                        .contains(item.id);
                                return MovieFavoriteItem(
                                  movie: item,
                                  watched: watched,
                                  favBtn: () {
                                    final Map<String, dynamic> favoriteData = {
                                      "media_type": "movie",
                                      "media_id": item.id,
                                      "favorite": false
                                    };
                                    userMovieBloc.add(
                                      AddFavoriteFetchEvent(
                                        accId: null,
                                        favoriteData: favoriteData,
                                      ),
                                    );
                                  },
                                  watchBtn: () {
                                    final Map<String, dynamic> watchlistData = {
                                      "media_type": "movie",
                                      "media_id": item.id,
                                      "watchlist": !watched
                                    };
                                    userMovieBloc.add(
                                      AddWatchlistFetchEvent(
                                        accId: null,
                                        watchlistData: watchlistData,
                                      ),
                                    );
                                  },
                                  downloadBtn: () {
                                    var url = StringConstants.moviePotrait +
                                        (item.posterPath ?? "");
                                    Utils utils = Utils();
                                    utils.saveImage(context, url);
                                  },
                                  detailBtn: () async {
                                    await Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailMovieScreen(
                                              movieId: item.id.toString(),
                                            ),
                                      ),
                                    );
                                    // context.goNamed("details", pathParameters: {'movieId': item.id.toString()});
                                  },
                                );
                              },
                            ).toList(),
                          ),
                        )
                      : Container(),
                ],
              );
          }
        },
      ),
    );
  }
}
