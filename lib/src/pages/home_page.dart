import 'package:componentes/src/provides/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text("DanceIN"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData:[],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        
        // print("builder");
        // print(snapshot.data);
        
        return ListView(
          children: _listaItems(snapshot.data,context),          
        ); 
      },
    );

    
  }

  List<Widget> _listaItems( List<dynamic> data,context) {
    
    final List<Widget> opciones = [];

    data.forEach((opt){

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black),
        onTap: (){
          Navigator.pushNamed(context, opt["ruta"]);

//          final route = MaterialPageRoute(    //Método para cambiar de pantalla
//            builder: (context){
//              return AlertPage();
//            }
//          );
          
//         Navigator.push (context, route);
        },
      );
    
      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

      return opciones;
  }
}