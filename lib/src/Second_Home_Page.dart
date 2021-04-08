import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SecondPageArguments arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrado"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Nombre Academia:" + arguments.name),
            Text("Representante:" + arguments.representante),
            Text("NIT" + arguments.nit),
            Text("Celular:" + arguments.celular),
            Text("Email:" + arguments.email),
          ],
        ),
      ),
    );
  }
}

class SecondPageArguments {
  String name;
  String representante;
  String nit;
  String celular;
  String email;
  SecondPageArguments(
      {this.name, this.representante, this.nit, this.celular, this.email});
}
