import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOpcion = AppRoutes.menuOpcion;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOpcion[index].name),
          leading: Icon(menuOpcion[index].icon, color: AppTheme.primary),
          onTap: (){
            /* final route = MaterialPageRoute(
              builder: (context) => const ListView1Screen(),
            );

            Navigator.push(context, route); */
            Navigator.pushNamed(context, menuOpcion[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOpcion.length,
        )
    );
  }
}