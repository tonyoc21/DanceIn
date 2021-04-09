import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/Init.dart';
import 'package:flutter_application_1/src/Login.dart';
import 'package:flutter_application_1/src/Registro.dart';
import 'package:flutter_application_1/src/ViewDate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => InicioApp(),
        "/second": (BuildContext context) => SecondPage(),
        "/homepage": (BuildContext context) => MyHomePage(),
        "/login": (BuildContext context) => LoginForm()
      },
    );
  }
}
