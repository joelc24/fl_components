import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          const ListTile(
            title: Text('Card 1'),
            subtitle: Text('Nostrud aliquip cillum consectetur voluptate duis. Non occaecat incididunt labore ipsum adipisicing laborum commodo aliquip cillum ullamco proident elit. Qui duis laborum laboris incididunt ullamco dolore minim pariatur deserunt cupidatat officia nostrud.'),
            leading: Icon(Icons.account_circle, color: AppTheme.primary),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok'),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}