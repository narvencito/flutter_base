import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:music/app/common/model/api_response_model.dart';
import 'package:music/app/modules/movie/model/movie_response_model.dart';
import 'package:music/app/modules/movie/repository/movie_repository_base.dart';
//import 'package:music/app/util/contanst_app.dart';

class MovieService extends MovieRepositoryBase {
  final dio = GetIt.instance.get<Dio>();

  @override
  Future<APiResponseModel> getMovies() async {
    late APiResponseModel res = APiResponseModel(false, 999, null, '');

    final response = await dio.get("/titles");
    final data =
        movieResponseModelFromJson(jsonEncode(response.data['results']));
    if (response.statusCode == 200) {
      res.status = true;
      res.statusCode = response.statusCode!;
      res.data = data;
    }

    return res;
  }

  @override
  Future<APiResponseModel> getMovie() {
    throw UnimplementedError();
  }
}
