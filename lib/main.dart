import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador Practica',
      theme: ThemeData(
            primarySwatch: Colors.amber
          ),
      home: ContadorPage(),
      
    );
  }
}

class ContadorPage extends StatefulWidget {
  
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  int clicks = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador de Clicks'),
        actions: <Widget>[
          GestureDetector(
            child: Icon(Icons.autorenew),
            onTap: (){
              setState(() {
                clicks = 0;
              });
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Apretaste', style: TextStyle(fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold),),
            Text('$clicks',style: Theme.of(context).textTheme.headline1 ),
            Text('Veces el  Boton',style: TextStyle(fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold))
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, ),
        onPressed: (){
          setState(() {
            clicks++;
          });
        }

        ),
    );
  }
}