import 'package:flutter/material.dart';

@immutable
class StringConstants {
  const StringConstants._();

  static const String appName = 'Bloc Auth';
  static const String baseUrl = 'https://api.themoviedb.org/3/';
  static const String bearerToken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzN2EzZjc1NjY4OWY3YTg5NTJlYmU0ZTc5MTkwNTI0NCIsIm5iZiI6MTcyMzI5NTYxNy42NTk4NjIsInN1YiI6IjY2YjFjZWU1ZmVlNTNjNmE4Yzc1NzA1OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.a_hZuYRC2-Qt3nH2rCfWnug2QUfWFxkUWmsTsWvgM1s';

  /// for cover size
  static const String moviePotrait = "https://image.tmdb.org/t/p/w600_and_h900_bestv2/";
  static const String movieLandscape = "https://media.themoviedb.org/t/p/w355_and_h200_multi_faces/";
  static const String castPotrait = "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/";

  /// for Login view
  static const String loginTitle = "You can log in with your information.";
  static const String loginButtonText = "LOGIN";
  static const String emailTitle = "Email";
  static const String passwordTitle = "Password";
  static const String emailHint = 'example@gmail.com';
  static const String passwordHint = '···········';

  /// for Home view
  static const String homePage = 'Home Page';

  /// for validators
  static const String requiredField = "Required field";
  static const String makeSureCorrectMail =
      "Please Enter the correct email.";
}