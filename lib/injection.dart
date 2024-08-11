import 'dart:async';

import 'package:dio/dio.dart';
import 'package:themoviedb/core/constants/app/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:themoviedb/features/movies/bloc/movie_bloc.dart';
import 'package:themoviedb/features/user/movies/bloc/user_movie_bloc.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
FutureOr<void> configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => Dio(
    BaseOptions(
      validateStatus: (_) => true,
      baseUrl: StringConstants.baseUrl,
      followRedirects: true,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      headers: {
        "Authorization": "Bearer ${StringConstants.bearerToken}"
      }
    ),
  );
}

class GlobalBlocProviders extends StatelessWidget {
  final Widget child;

  const GlobalBlocProviders({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MovieBloc>(
          create: (_) => getIt.get<MovieBloc>(),
        ),
        BlocProvider<UserMovieBloc>(
          create: (_) => getIt.get<UserMovieBloc>(),
        ),
      ],
      child: child,
    );
  }
}