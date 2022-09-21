import 'package:flutter/material.dart';
import 'package:pelicula2022/models/model.dart';

class CreditsScrenn extends StatelessWidget {
  const CreditsScrenn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Cast cast = ModalRoute.of(context)!.settings.arguments as Cast;

    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[_CreditosCast(cast)]),
    );
  }
}

class _CreditosCast extends StatelessWidget {
  final Cast cast;
  _CreditosCast(Cast this.cast);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(children: [
        Text(
          cast.knownForDepartment,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          cast.name,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Text(
          cast.originalName,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ]),
    );
  }
}
