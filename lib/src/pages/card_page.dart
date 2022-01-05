import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardView'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[_card1(),_card2()],
      ),
    );
  }

    Widget _card1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.person,color: Colors.blue,),
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text('Soy un subtitulo de prueba para la primera tarjeta '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: (){}, child: Text('cancelar')),
              TextButton(onPressed: (){}, child: Text('Aceptar')),
            ],
          )
        ],
      ),
    );
  }

  Widget _card2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(placeholder: AssetImage('assets/cat.gif'), image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Prueba FadeInImage '),
          )
        ],
      ),
    );
  }
}
