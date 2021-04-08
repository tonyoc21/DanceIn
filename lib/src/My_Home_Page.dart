import 'package:flutter/material.dart';

import 'Second_Home_Page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String nameValue;
  String representanteValue;
  String nitValue;
  String celularValue;
  String emailValue;

  final nameTextController = TextEditingController();
  final representanteTextController = TextEditingController();
  final nitTextController = TextEditingController();
  final celularTextController = TextEditingController();
  final emailTextController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro Academia"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formkey,
            child: Column(
              children: <Widget>[
                TextFormField(
                    controller: nameTextController,
                    decoration: InputDecoration(labelText: "Nombre Academia"),
                    onSaved: (value) {
                      nameValue = value;
                    },
                    // ignore: missing_return
                    validator: (value) => value.isEmpty ? 'Campo vacio' : null),
                TextFormField(
                    controller: representanteTextController,
                    decoration: InputDecoration(labelText: "Representante"),
                    onSaved: (value) {
                      representanteValue = value;
                    },
                    validator: (value) => value.isEmpty ? 'Campo vacio' : null),
                TextFormField(
                    controller: nitTextController,
                    decoration: InputDecoration(labelText: "NIT"),
                    onSaved: (value) {
                      nitValue = value;
                    },
                    validator: (value) => value.isEmpty ? 'Campo vacio' : null),
                TextFormField(
                    controller: celularTextController,
                    decoration:
                        InputDecoration(labelText: "Numero de telefono"),
                    keyboardType: TextInputType.phone,
                    onSaved: (value) {
                      celularValue = value;
                    },
                    validator: (value) => value.isEmpty ? 'Campo vacio' : null),
                TextFormField(
                    controller: emailTextController,
                    decoration:
                        InputDecoration(labelText: "Correo Electrónico"),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      emailValue = value;
                    },
                    validator: (value) => value.isEmpty ? 'Campo vacio' : null),
                Divider(
                  height: 30.0,
                ),
                ElevatedButton(
                  child: Text("Registrarse"),
                  onPressed: () {
                    final form = formkey.currentState;
                    if (form.validate()) {
                      form.save();
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Registro exitoso'),
                          content: Text('Registro exitoso'),
                          actions: <Widget>[
                            TextButton(
                                child: Text('ok'),
                                onPressed: () {
                                  _showSecondPage(context);
                                }),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
    }
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(
            name: this.nameValue,
            representante: this.representanteValue,
            nit: this.nitValue,
            celular: this.celularValue,
            email: this.emailValue));
  }
}
