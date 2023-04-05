import 'package:flutter/material.dart';
import 'package:music/app/modules/login/page/login_page.dart';
import 'package:music/app/modules/movie/page/movie_page.dart';

class RoutesApp {
  static const login = '/';
  static const movie = '/movie';
  static const movieDetail = '/movie-detail';

  static Route routes(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case movie:
      return MaterialPageRoute(builder: (context) => MoviePage.create(context),);
      case login:
         return MaterialPageRoute(
             builder: (context) => LoginPage());
      //case newsDetails:
      //  return MaterialPageRoute(
      //      builder: (_) => NewsDetailScreen.create(args!));
    }
    throw Exception('This route does not exists');
  }
}