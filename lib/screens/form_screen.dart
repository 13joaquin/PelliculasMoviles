import 'package:flutter/material.dart';
import 'package:pelicula2022/screens/form_screen.dart';
import 'package:flutter/widgets.dart';

class SavePage extends StatelessWidget {
  static const String Route = "/save";
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
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Form(
            key: _formkey,
            child: Column(children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Requiere un Nombre de mascota";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Nombre de Mascotas",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                maxLength: 5,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Requiere un nombre del dueño";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Nombre del dueño",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Requiere un telefono del dueño";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Telefono del dueño",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Requiere una raza";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Raza",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Requiere un sexo";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Sexo",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Requiere una edad de la mascota";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Edad de la mascota",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                maxLength: 7,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Requiere un tipo de mascota";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Tipo de Mascota",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Requiere una fecha de nacimiento de la mascota";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Fecha de nacimiento de la mascota",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
              ),
              RaisedButton(
                child: Text("Guardar"),
                onPressed: () {
                  if (_formkey.currentState.validate()) {
                    print("Valido");
                  }
                },
              )
            ])));
  }
}
