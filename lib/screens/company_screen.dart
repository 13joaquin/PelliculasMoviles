import 'package:flutter/material.dart';
import 'package:pelicula2022/models/model.dart';

class CompanySScreen extends StatelessWidget {
  const CompanySScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Company movie = ModalRoute.of(context)!.settings.arguments as Company;

    return Scaffold(
      body:
          CustomScrollView(slivers: <Widget>[_OverView(movie), _ListCompanu()]),
    );
  }
}

class _OverView extends StatelessWidget {
  final Company movie;
  _OverView(Company this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        movie.name,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

class _ListCompanu extends StatelessWidget {
  _ListCompanu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compañia App"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Compañia 1"),
            ),
            ListTile(
              title: Text("Compañia 2"),
            ),
            ListTile(
              title: Text("Compañia 3"),
            ),
          ],
        ),
      ),
    );
  }
}
