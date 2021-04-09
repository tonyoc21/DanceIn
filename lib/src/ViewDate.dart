import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SecondPageArguments arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text("DATOS DE REGISTRO"),
      ),

      // muestra los datos del registro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Academia: " + arguments.nombre,
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              "Usuario: " + arguments.usuario,
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              "Nit: " + arguments.nit,
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              "Celular: " + arguments.celular,
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              "Email: " + arguments.email,
              style: TextStyle(fontSize: 40.0),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPageArguments {
  String nombre;
  String usuario;
  String nit;
  String celular;
  String email;
  SecondPageArguments(
      {this.nombre, this.usuario, this.nit, this.celular, this.email});
}
