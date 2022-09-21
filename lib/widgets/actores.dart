import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pelicula2022/models/model.dart';
import 'package:pelicula2022/providers/movies_provider.dart';
import 'package:provider/provider.dart';

class Actores extends StatelessWidget {
  final int movieID;
  const Actores(this.movieID);
  @override
  Widget build(BuildContext context) {
    final movieProvider = Provider.of<MoviesProvider>(context, listen: false);
    return FutureBuilder(
        future: movieProvider.getMovieCast(movieID),
        builder: (_, AsyncSnapshot<List<Cast>> snapshot) {
          if (!snapshot.hasData) {
            return Container(
              constraints: BoxConstraints(maxWidth: 160),
              height: 180,
              child: CupertinoActivityIndicator(),
            );
          }
          final List<Cast> cast = snapshot.data!;
          return Container(
            margin: EdgeInsets.only(bottom: 350),
            width: double.infinity,
            height: 300,
            child: ListView.builder(
                itemCount: cast.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, int index) => _ActorCard(cast[index])),
          );
        });
  }
}

class _ActorCard extends StatelessWidget {
  final Cast actor;
  const _ActorCard(this.actor);
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage(actor.fullProfilePath)),
        ),
        Text(
          actor.originalName,
          style: textTheme.headline6,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          maxLines: 3,
        ),
        Text(
          actor.knownForDepartment,
          style: textTheme.subtitle1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          maxLines: 3,
        ),
      ]),
    );
  }
}
