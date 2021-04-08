import 'package:flutter/material.dart';

class InicioApp extends StatefulWidget {
  InicioApp({Key key}) : super(key: key);

  @override
  _InicioAppState createState() => _InicioAppState();
}

class _InicioAppState extends State<InicioApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('DANCE IN'),
              Divider(
                height: 40.0,
              ),
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.grey,
                // backgroundImage: AssetImage('xxx.png'),
              ),
              Divider(
                height: 18.0,
              ),
              SizedBox(
                // ignore: deprecated_member_use
                child: FlatButton(
                  hoverColor: Colors.lightBlue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/login");
                  },
                  child: Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 30.0,
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                ),
              ),
              Divider(
                height: 18.0,
              ),
              SizedBox(
                // ignore: deprecated_member_use
                child: FlatButton(
                  hoverColor: Colors.lightBlue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/homepage");
                  },
                  child: Text(
                    'Registrarse',
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
