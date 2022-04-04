import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const <String>['Megaman','Metal','Gear','Super Smash', 'final fantasy'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[

          ...options.map((game) => ListTile(
            title: Text(game),
            trailing: const Icon(Icons.keyboard_arrow_right)
          )).toList(),

          
        ],
      )
    );
  }
}