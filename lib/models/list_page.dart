import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  static const String Route = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listado"),
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Nota 1"),
          ),
          ListTile(
            title: Text("Nota 1"),
          ),
          ListTile(
            title: Text("Nota 1"),
          ),
          ListTile(
            title: Text("Nota 1"),
          ),
          ListTile(
            title: Text("Nota 1"),
          ),
          ListTile(
            title: Text("Nota 1"),
          ),
          ListTile(
            title: Text("Nota 1"),
          ),
          ListTile(
            title: Text("Nota 1"),
          ),
        ],
      )),
    );
  }
}
