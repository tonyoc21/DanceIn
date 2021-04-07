import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Academias'),
      ),    
      body: ListView(
        padding:EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo3(),
          SizedBox(height: 30.0),
          _cardTipo3(),
          SizedBox(height: 30.0),
          _cardTipo3(),
          SizedBox(height: 30.0),
          _cardTipo3(),
          SizedBox(height: 30.0),
          _cardTipo3(),
          SizedBox(height: 30.0),
        ]
      )
    );
  }

  Widget _cardTipo1(){

    return Card( //Card - Tarjeta
      elevation: 2.0, //Elevación respecto a la sombra
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text("Soy el título de esta tarjeta"),
            subtitle: Text("Aquí estamos con la descripción de la tarjeta de lo que queremos mostrarles"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end, //Se alineen a la izquierda
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},   //Método que siempre bebe existir en los botones
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},   //Método que siempre bebe existir en los botones
              ),
            ]
          )
        ]
      ),
    );
  }

//Crea un container con la imagen y el texto,Retorna un Container con todas las ediciones y con el contenido del primer container creado
  Widget _cardTipo2(){    
    
    final card = Container(
      
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://static.educalingo.com/img/en/800/landscape.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("No tengo idea de qué poner")
          )
        ]
      )
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            //offset: Offset(2.0,-10.0)
          )
        ]
      ),
      child:ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo3(){    
    
    final card = Container(
      
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://images.vexels.com/media/users/3/135777/isolated/preview/46361234eb75aa123c6d787bcdc0059a-logotipo-de-la-academia-de-danza-by-vexels.png'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Academy of Dance")
          )
        ]
      )
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            //offset: Offset(2.0,-10.0)
          )
        ]
      ),
      child:ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}