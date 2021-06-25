import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{

  @override
  createState() =>  _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage>{
  
  final _estiloTexto = new TextStyle(fontSize: 34);
  int _contador = 0;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ctrl  + spacio para ver los metodos
      appBar: AppBar(
        title: Text('Statefull'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Cantidad de taps:', style:_estiloTexto),
            Text('$_contador', style: _estiloTexto),
          ],
        )
        ),
        floatingActionButton: _crearBotones()
    );
  }


Widget _crearBotones(){

  return Row(
    mainAxisAlignment: MainAxisAlignment.end,  
    children: <Widget>[
      SizedBox(width: 30.0,),
      FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero)),
      Expanded(child: SizedBox() ),
      FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove)),
      SizedBox(width: 5.0,),
      FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add)),

    ],
  );
}

void _agregar(){
  //El setState redibuja el widget oara que se actualice
  setState(() => _contador++ );
}
 
void _sustraer(){
  setState(() => _contador--);

}

void _reset(){
  setState(() => _contador = 0);

}



}

