import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:themoviedb/core/constants/app/string_constants.dart';
import 'package:themoviedb/core/utils.dart';
import 'package:themoviedb/features/movies/bloc/movie_bloc.dart';
import 'package:themoviedb/features/movies/ui/screens/detail_screen.dart';
import 'package:themoviedb/features/movies/ui/widgets/movie_item.dart';
import 'package:themoviedb/features/user/movies/bloc/user_movie_bloc.dart';
import 'package:themoviedb/injection.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({super.key});

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  final MovieBloc movieBloc = getIt.get<MovieBloc>();
  final UserMovieBloc userMovieBloc = getIt.get<UserMovieBloc>();

  final CarouselSliderController _controller = CarouselSliderController();

  int _current = 0;

  GetWatchlistFetchingMovieSuccessState? watchlistData;
  GetFavoriteFetchingMovieSuccessState? favoriteData;
  GetPlayingFetchingSuccessState? playMovieData;
  GetPopularFetchingSuccessState? popularMovieData;

  void _callData() {
    movieBloc.add(GetPlayingFetchEvent());
    movieBloc.add(GetPopularFetchEvent());
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
      child: BlocConsumer<MovieBloc, MovieState>(
        bloc: movieBloc,
        listener: (context, state) {
          if (state.runtimeType == GetPlayingFetchingSuccessState) {
            final _playMovieData = state as GetPlayingFetchingSuccessState;
            setState(() {
              playMovieData = _playMovieData;
            });
          }
          if (state.runtimeType == GetPopularFetchingSuccessState) {
            final _popularMovieData = state as GetPopularFetchingSuccessState;
            setState(() {
              popularMovieData = _popularMovieData;
            });
          }
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            case GetPlayingFetchingLoadingState:
              return const Center(child: CircularProgressIndicator());
            case GetPlayingFetchingErrorState:
              return const Center(child: CircularProgressIndicator());
            default:
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      "NOW PLAYING",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  playMovieData == null
                      ? Container()
                      : CarouselSlider(
                          carouselController: _controller,
                          options: CarouselOptions(
                              height: MediaQuery.of(context).size.width * 0.5,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 2.0,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                          items: playMovieData?.playingData?.results
                              ?.map((item) {
                                return GestureDetector(
                                  onTap: () async {
                                    await Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailMovieScreen(
                                              movieId: item.id.toString(),
                                            ),
                                      ),
                                    );
                                    // context.goNamed("details", pathParameters: {
                                    //   'movieId': item.id.toString()
                                    // });
                                  },
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5.0)),
                                      child: Stack(
                                        children: <Widget>[
                                          Image.network(
                                            StringConstants.movieLandscape +
                                                (item.backdropPath ?? ""),
                                            fit: BoxFit.cover,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            errorBuilder: (context, exception, stackTrace) {
                                              return Text('Image 404 Not Found...');
                                            },
                                          ),
                                          Positioned(
                                            bottom: 0.0,
                                            left: 0.0,
                                            right: 0.0,
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color.fromARGB(
                                                        200, 0, 0, 0),
                                                    Color.fromARGB(0, 0, 0, 0)
                                                  ],
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                ),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10.0,
                                                      horizontal: 20.0),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Image.network(
                                                        StringConstants
                                                                .moviePotrait +
                                                            (item.posterPath ??
                                                                ""),
                                                        fit: BoxFit.cover,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2),
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            item.originalTitle ??
                                                                "",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .titleMedium,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                          Text(
                                                            (item.overview ??
                                                                    "")
                                                                .substring(
                                                                    0,
                                                                    ((item.overview ?? "").length *
                                                                            0.5)
                                                                        .toInt()),
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                );
                              })
                              .toList()
                              .sublist(0, 6),
                        ),
                  playMovieData == null
                      ? Container()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              [1, 2, 3, 4, 5, 6].asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
                              child: Container(
                                width: 12.0,
                                height: 12.0,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                              ),
                            );
                          }).toList(),
                        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      "POPULAR MOVIES",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  popularMovieData?.popularData?.results != null
                      ? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: BlocConsumer<UserMovieBloc, UserMovieState>(
                            bloc: userMovieBloc,
                            listener: (context, state) {
                              if (state.runtimeType ==
                                  GetWatchlistFetchingMovieSuccessState) {
                                setState(() {
                                  watchlistData = state
                                      as GetWatchlistFetchingMovieSuccessState;
                                });
                              }
                              if (state.runtimeType ==
                                  GetFavoriteFetchingMovieSuccessState) {
                                setState(() {
                                  favoriteData = state
                                      as GetFavoriteFetchingMovieSuccessState;
                                });
                              }
                              if (state.runtimeType ==
                                      AddWatchlistFetchingMovieSuccessState ||
                                  state.runtimeType ==
                                      AddFavoriteFetchingMovieSuccessState) {
                                _callData();
                              }
                            },
                            builder: (context, state) {
                              if (favoriteData != null &&
                                  watchlistData != null) {
                                return Row(
                                  children: popularMovieData!
                                      .popularData!.results!
                                      .map((item) {
                                    final faved = favoriteData!
                                            .favoriteData!.results!.isEmpty
                                        ? false
                                        : favoriteData!.favoriteData!.results!
                                            .map((e) => e.id)
                                            .contains(item.id);
                                    final watched = watchlistData!
                                            .watchlistData!.results!.isEmpty
                                        ? false
                                        : watchlistData!.watchlistData!.results!
                                            .map((e) => e.id)
                                            .contains(item.id);
                                    return MovieItem(
                                      movie: item,
                                      faved: faved,
                                      watched: watched,
                                      favBtn: () {
                                        final Map<String, dynamic>
                                            favoriteData = {
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
                                        final Map<String, dynamic>
                                            watchlistData = {
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
                                        //
                                        // WidgetsBinding.instance.addPostFrameCallback((_) {
                                        //   print('Page returned $result');
                                        // });
                                      },
                                    );
                                  }).toList(),
                                );
                              }
                              return Container();
                            },
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
