import 'package:flutter/material.dart';

import 'ViewDate.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

//Inicia sesión
class _LoginFormState extends State<LoginForm> {
  String nombre;
  String usuario;
  String usuarioGuardado;
  String contrasenaGuardada;
  String telefono;
  String nit;
  String email;
  String contrasena;
  @override
  Widget build(BuildContext context) {
    //Leer los datos desde registo
    IniciarSesionArguments argumentos =
        ModalRoute.of(context).settings.arguments;

    //Crea el inicio de sesión
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundColor: Colors.blueGrey[100],
                child: Container(
                    child: Image.asset("images/user.png", fit: BoxFit.cover)),
              ),
              Text(
                "Inicia Sesión",
                style: TextStyle(fontSize: 40.0),
              ),
              Divider(
                height: 18.0,
              ),
              SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(
                  color: Colors.blueGrey[600],
                ),
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'Usuario',
                    labelText: 'Usuario',
                    suffixIcon: Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
                onSubmitted: (valor) {
                  nombre = valor;
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Contraseña',
                    labelText: 'Contraseña',
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
                onSubmitted: (valor) {
                  contrasena = valor;
                },
              ),
              Divider(
                height: 18.0,
              ),
              SizedBox(
                // ignore: deprecated_member_use
                child: FlatButton(
                  hoverColor: Colors.lightBlue,
                  onPressed: () {
                    nombre = argumentos.nombre;
                    usuarioGuardado = argumentos.usuario;
                    telefono = argumentos.celular;
                    nit = argumentos.nit;
                    email = argumentos.email;
                    contrasenaGuardada = argumentos.contrasena;
                    _showSecondPage(context);
                  },
                  child: Text(
                    'Ingresar',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 40.0,
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

//Pasa dato a ViewDate para mostrarlos
  void _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(
            nombre: this.nombre,
            usuario: this.usuarioGuardado,
            nit: this.nit,
            celular: this.telefono,
            email: this.email));
  }
}

class IniciarSesionArguments {
  String nombre;
  String usuario;
  String nit;
  String celular;
  String email;
  String contrasena;
  IniciarSesionArguments(
      {this.nombre,
      this.usuario,
      this.nit,
      this.celular,
      this.email,
      this.contrasena});
}
