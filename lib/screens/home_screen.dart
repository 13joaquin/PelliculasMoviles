import 'package:flutter/material.dart';
import 'package:pelicula2022/providers/movies_provider.dart';
import 'package:pelicula2022/search/search_delegate.dart';
import 'package:pelicula2022/widgets/card_swiper.dart';
import 'package:pelicula2022/widgets/movie_slider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Películas en cines"),
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () => showSearch(
                    context: context, delegate: MovieSearchDelegate()))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(movies: moviesProvider.onDisplayMovies),
              MovieSlider(
                  movies: moviesProvider.popularMovies,
                  title: "Populares",
                  onNextPage: () => moviesProvider.getPopularMovies())
            ],
          ),
        ));
  }
}
