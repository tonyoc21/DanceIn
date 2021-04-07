import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Componentes Temp"),
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();
    
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text("Eso es un subtítulos"),
        leading: Icon(Icons.insights),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){},
      );
      lista.add(tempWidget);
      lista.add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta(){

    return opciones.map((item){
      return Column(
        children: [
          ListTile(
            title: Text(item + "!"),
            subtitle: Text("Eso es un subtítulo"),
            leading: Icon(Icons.insights),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();

  }

}