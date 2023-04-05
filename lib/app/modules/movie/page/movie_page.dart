import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music/app/modules/movie/model/movie_response_model.dart';
import 'package:music/app/modules/movie/movie_bloc/movie_bloc.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  static Widget create(BuildContext context) {
    return BlocProvider<MovieBloc>(
      create: (_) => MovieBloc()..loadMovies(),
      child: const MoviePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Listado de peliculas"), centerTitle: true ),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          if (state is MovieLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is MovieLoadCompleteState) {
            return SizedBox(
              child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
                child: ListView.builder(
                  itemCount: state.movies.length,
                  itemBuilder: (context, index) {
                    MovieResponseModel model = state.movies[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                         Text(model.titleText.text),
                          model.primaryImage != null
                              ? Image.network(
                                  model.primaryImage!.url,
                                )
                              : Container(
                                  height: 200,
                                  color: Colors.red[200],
                                  child: const Center(
                                    child: Text("Sin imagen"),
                                  )),
                          Text(model.releaseYear.year.toString())
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          }

          if (state is MovieErrorState) {
            return const Center(child: Text("error"));
          }

          return Container();
        },
      ),
    );
  }
}
