import 'package:flutter/material.dart';

class InicioApp extends StatefulWidget {
  InicioApp({Key key}) : super(key: key);

  @override
  _InicioAppState createState() => _InicioAppState();
}

//Página inicial, utiliza un boton para realizar el registro

class _InicioAppState extends State<InicioApp> {
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
              Text(
                'DANCE IN',
                style: TextStyle(fontSize: 50.0),
              ),

              CircleAvatar(
                radius: 170.0,
                backgroundColor: Colors.blueGrey[100],
                child: Container(
                    child:
                        Image.asset("images/imagen3.jpg", fit: BoxFit.cover)),
              ),
              //Registrar academia
              SizedBox(
                // ignore: deprecated_member_use
                child: FlatButton(
                  hoverColor: Colors.black,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/homepage");
                  },
                  child: Text(
                    'Registrarte',
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
}
