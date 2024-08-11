import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:themoviedb/core/constants/app/string_constants.dart';
import 'package:themoviedb/core/utils.dart';
import 'package:themoviedb/features/movies/bloc/movie_bloc.dart';
import 'package:themoviedb/features/user/movies/ui/widgets/movie_similar_item.dart';
import 'package:themoviedb/injection.dart';

class DetailMovieScreen extends StatefulWidget {
  const DetailMovieScreen({super.key, required this.movieId});

  final String movieId;

  @override
  State<DetailMovieScreen> createState() => _DetailMovieScreenState();
}

class _DetailMovieScreenState extends State<DetailMovieScreen> {
  final MovieBloc movieBloc = getIt.get<MovieBloc>();

  GetDetailMovieFetchingSuccessState? detailData;
  GetMovieTrailerFetchingSuccessState? trailerData;
  GetMovieCastFetchingSuccessState? castData;
  GetMovieReviewFetchingSuccessState? reviewData;
  GetMovieSimilarFetchingSuccessState? similarData;

  void _callData() {
    movieBloc.add(GetDetailMovieFetchEvent(movieId: widget.movieId));
    movieBloc.add(GetMovieTrailerFetchEvent(movieId: widget.movieId));
    movieBloc.add(GetMovieCastFetchEvent(movieId: widget.movieId));
    movieBloc.add(GetMovieReviewFetchEvent(movieId: widget.movieId));
    movieBloc.add(GetMovieSimilarFetchEvent(movieId: widget.movieId));
  }

  @override
  void initState() {
    super.initState();
    _callData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff04101C),
      appBar: AppBar(
        forceMaterialTransparency: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: BlocConsumer<MovieBloc, MovieState>(
        bloc: movieBloc,
        listener: (context, state) {
          if (state.runtimeType == GetDetailMovieFetchingSuccessState) {
            setState(() {
              detailData = state as GetDetailMovieFetchingSuccessState;
            });
          }
          if (state.runtimeType == GetMovieTrailerFetchingSuccessState) {
            setState(() {
              trailerData = state as GetMovieTrailerFetchingSuccessState;
            });
          }
          if (state.runtimeType == GetMovieCastFetchingSuccessState) {
            setState(() {
              castData = state as GetMovieCastFetchingSuccessState;
            });
          }
          if (state.runtimeType == GetMovieReviewFetchingSuccessState) {
            setState(() {
              reviewData = state as GetMovieReviewFetchingSuccessState;
            });
          }
          if (state.runtimeType == GetMovieSimilarFetchingSuccessState) {
            setState(() {
              similarData = state as GetMovieSimilarFetchingSuccessState;
            });
          }
        },
        builder: (context, state) {
          return detailData == null
              ? Container()
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.network(
                        StringConstants.movieLandscape +
                            (detailData?.movieData?.backdropPath ?? ""),
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        errorBuilder: (context, exception, stackTrace) {
                          return Text('Image 404 Not Found...');
                        },
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                detailData?.movieData?.originalTitle ?? "",
                                style:
                                    Theme.of(context).textTheme.titleMedium,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                    child: Image.network(
                                      StringConstants.moviePotrait +
                                          (detailData
                                                  ?.movieData?.posterPath ??
                                              ""),
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context)
                                              .size
                                              .width *
                                          0.2,
                                      errorBuilder:
                                          (context, exception, stackTrace) {
                                        return Text(
                                            'Image 404 Not Found...');
                                      },
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      detailData?.movieData?.genres
                                              ?.map((e) => e.name)
                                              .join(",") ??
                                          '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.all(8.0),
                                          child: CircularPercentIndicator(
                                            radius: 20.0,
                                            lineWidth: 5.0,
                                            percent: (detailData?.movieData
                                                        ?.voteAverage ??
                                                    0) /
                                                10,
                                            center: Text(
                                              detailData?.movieData
                                                      ?.voteAverage
                                                      ?.toStringAsFixed(
                                                          1) ??
                                                  '',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            progressColor: Colors.green,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 5,
                                                color: Colors.green,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: Text(
                                                detailData?.movieData
                                                        ?.originalLanguage ??
                                                    '',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Status",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                    Text(
                                      detailData?.movieData?.status ?? '',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Original Title",
                                style:
                                    Theme.of(context).textTheme.bodyMedium,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0),
                              child: Text(
                                detailData?.movieData?.originalTitle ?? "",
                                style:
                                    Theme.of(context).textTheme.titleSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Overview",
                                style:
                                    Theme.of(context).textTheme.bodyMedium,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                detailData?.movieData?.overview ?? "",
                                style:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Similar Movie",
                                style:
                                    Theme.of(context).textTheme.titleMedium,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: similarData == null
                                  ? Container()
                                  : Row(
                                      children: similarData!
                                          .similarData!.results!
                                          .map((item) {
                                        return MovieSimilarItem(
                                            movie: item,
                                            downloadBtn: () {
                                              var url = StringConstants
                                                      .moviePotrait +
                                                  (item.posterPath ?? "");
                                              Utils utils = Utils();
                                              utils.saveImage(context, url);
                                            },
                                            detailBtn: () async {
                                              await Navigator.of(context)
                                                  .push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      DetailMovieScreen(
                                                    movieId:
                                                        item.id.toString(),
                                                  ),
                                                ),
                                              );
                                              // context.goNamed("details",
                                              //     pathParameters: {
                                              //       'movieId':
                                              //           item.id.toString()
                                              //     });
                                            });
                                      }).toList(),
                                    ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
