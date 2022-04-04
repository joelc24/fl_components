


import 'package:fl_components/models/model.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const String initialRoute = 'home';

  static final menuOpcion = <MenuOpcion>[
    MenuOpcion(route: 'home', icon: Icons.home, name: 'Home', screen: const HomeScreen()),
    MenuOpcion(route: 'listview1', icon: Icons.list_alt, name: 'Listview Tipo 1', screen: const ListView1Screen()),
    MenuOpcion(route: 'listview2', icon: Icons.list, name: 'Listview Tipo 2', screen: const ListView2Screen()),
    MenuOpcion(route: 'alert', icon: Icons.add_alert_rounded, name: 'Alertas', screen: const AlertScreen()),
    MenuOpcion(route: 'Card', icon: Icons.card_giftcard, name: 'Cards', screen: const CardScreen()),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final opcion in menuOpcion) {
      appRoutes.addAll({opcion.route: (BuildContext context) => opcion.screen});
    }

    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
        'home': (BuildContext context) => const HomeScreen(),
        'listview1': (BuildContext context) => const ListView1Screen(),
        'listview2': (BuildContext context) => const ListView2Screen(),
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
     return MaterialPageRoute(
          builder: (context) => const AlertScreen (),
    );
  }
     
    
}