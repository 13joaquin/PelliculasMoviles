import 'package:flutter/material.dart';
import 'package:pelicula2022/screens/form_screen.dart';

class SavePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guardar"),
      ),
      body: Container(
        child: _FormSave(),
      ),
    );
  }
}

class _FormSave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(child: Column(children: <Widget>[TextFormField()]));
  }
}
