// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:themoviedb/features/movies/bloc/movie_bloc.dart' as _i769;
import 'package:themoviedb/features/movies/domain/repository/movie_repo.dart'
    as _i392;
import 'package:themoviedb/features/user/movies/bloc/user_movie_bloc.dart'
    as _i283;
import 'package:themoviedb/features/user/movies/domain/domain/repository/user_movie_repo.dart'
    as _i813;
import 'package:themoviedb/injection.dart' as _i1053;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i361.Dio>(() => registerModule.dio);
    gh.factory<_i392.MovieRepository>(
        () => _i392.MovieRepository(gh<_i361.Dio>()));
    gh.factory<_i813.UserMovieRepository>(
        () => _i813.UserMovieRepository(gh<_i361.Dio>()));
    gh.factory<_i769.MovieBloc>(
        () => _i769.MovieBloc(gh<_i392.MovieRepository>()));
    gh.factory<_i283.UserMovieBloc>(
        () => _i283.UserMovieBloc(gh<_i813.UserMovieRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i1053.RegisterModule {}
