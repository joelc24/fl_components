import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const <String>['Megaman','Metal','Gear','Super Smash', 'final fantasy'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.indigo),
          onTap: (){
            final game = options[index];
            print('$game was tapped');
          },
        ),
        separatorBuilder: (_ , __) => const Divider(),
      )
    );
  }
}