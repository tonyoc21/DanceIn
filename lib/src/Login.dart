import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String nombre;
  String email;
  String contrasena;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.grey,
                // backgroundImage: AssetImage('xxx.png'),
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 50.0),
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
                decoration: InputDecoration(
                    hintText: 'Correo',
                    labelText: 'Correo',
                    suffixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
                onSubmitted: (valor) {
                  email = valor;
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
                  onPressed: () {},
                  child: Text(
                    'Ingresar',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 30.0,
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
}
