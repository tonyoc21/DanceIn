import 'package:flutter/material.dart';

import 'Login.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// Crear campos de texto para el registro de la academia,
//  guardar datos para iniciar sesión
class _MyHomePageState extends State<MyHomePage> {
  String nameValue;
  String usuarioValue;
  String nitValue;
  String celularValue;
  String emailValue;
  String passwordValue;

  final nameTextController = TextEditingController();
  final usuarioTextController = TextEditingController();
  final nitTextController = TextEditingController();
  final celularTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text("REGISTRA TU ACADEMIA"),
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
                    decoration: InputDecoration(
                        hintText: 'Nombre Academia',
                        labelText: 'Nombre Academia',
                        suffixIcon: Icon(Icons.verified_user),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    onSaved: (value) {
                      nameValue = value;
                    },
                    // ignore: missing_return
                    validator: (value) => value.isEmpty ? 'Campo vacio' : null),
                Divider(
                  height: 18.0,
                ),
                TextFormField(
                    controller: usuarioTextController,
                    decoration: InputDecoration(
                        hintText: 'Usuario',
                        labelText: 'Usuario',
                        suffixIcon: Icon(Icons.verified_user),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    onSaved: (value) {
                      usuarioValue = value;
                    },
                    validator: (value) => value.isEmpty ? 'Campo vacio' : null),
                Divider(
                  height: 18.0,
                ),
                TextFormField(
                    controller: nitTextController,
                    decoration: InputDecoration(
                        hintText: 'NIT',
                        labelText: 'NIT',
                        suffixIcon: Icon(Icons.verified_user),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    onSaved: (value) {
                      nitValue = value;
                    },
                    validator: (value) => value.isEmpty ? 'Campo vacio' : null),
                Divider(
                  height: 18.0,
                ),
                TextFormField(
                    controller: celularTextController,
                    decoration: InputDecoration(
                        hintText: 'Teléfono',
                        labelText: 'Teléfono',
                        suffixIcon: Icon(Icons.verified_user),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    keyboardType: TextInputType.phone,
                    onSaved: (value) {
                      celularValue = value;
                    },
                    validator: (value) => value.isEmpty ? 'Campo vacio' : null),
                Divider(
                  height: 18.0,
                ),
                TextFormField(
                    controller: emailTextController,
                    decoration: InputDecoration(
                        hintText: 'Correo Electrónico',
                        labelText: 'Correo Electrónico',
                        suffixIcon: Icon(Icons.verified_user),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      emailValue = value;
                    },
                    validator: (value) => value.isEmpty ? 'Campo vacio' : null),
                Divider(
                  height: 30.0,
                ),
                TextFormField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                    controller: passwordTextController,
                    decoration: InputDecoration(
                        hintText: 'Contraseña',
                        labelText: 'Contraseña',
                        suffixIcon: Icon(Icons.verified_user),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    onSaved: (value) {
                      passwordValue = value;
                    },
                    validator: (value) => value.isEmpty ? 'Campo vacio' : null),
                Divider(
                  height: 30.0,
                ),
                ElevatedButton(
                  child: Text(
                    "Registrarse",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 30.0,
                    ),
                  ),
                  //Se genera un alert el cual indica si el registro fue guardado con exito
                  onPressed: () {
                    final form = formkey.currentState;
                    if (form.validate()) {
                      form.save();
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Registro exitoso'),
                          content: Text('Iniciar Sesión'),
                          actions: <Widget>[
                            TextButton(
                                child: Text('Inicia Sesión'),
                                onPressed: () {
                                  _showIniciarSesion(context);
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

  // Se trasfiere los datos guardados al login
  void _showIniciarSesion(BuildContext context) {
    Navigator.of(context).pushNamed("/login",
        arguments: IniciarSesionArguments(
            nombre: this.nameValue,
            usuario: this.usuarioValue,
            nit: this.nitValue,
            celular: this.celularValue,
            email: this.emailValue,
            contrasena: this.passwordValue));
  }
}
