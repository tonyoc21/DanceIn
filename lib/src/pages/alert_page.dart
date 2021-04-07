import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos'),
      ),
      body:Center(
        child:RaisedButton(
          child:Text("Mostrar Eventos"),
          color: Colors.black,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon (Icons.add_location),
      //   onPressed: (){    //Botón para regresar de página
      //     Navigator.pop(context);
      //   },
      // ),
    );
  }

  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true, //Cerrar alerta dando click afuera
      builder:(context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text("Eventos"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("No hay eventos disponibles"),
              //FlutterLogo(size:100.0)
            ],
          ),
          actions: <Widget>[
            // FlatButton(
            //   child: Text ("Cancelar"),
            //   onPressed: () => Navigator.of(context).pop(), // Para poder cerrar las alertas
            // ),
            FlatButton(
              child: Text ("OK"),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }
}