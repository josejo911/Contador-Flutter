import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle(fontSize: 34);
  int contador = 10;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ctrl  + spacio para ver los metodos
      appBar: AppBar(
        title: Text('Titulon'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Cantidad de taps:', style:estiloTexto),
            Text('$contador', style: estiloTexto),
          ],
        )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            contador = contador + 1;

          },
        ),
    );
  }
}