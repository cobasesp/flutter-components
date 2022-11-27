import 'package:components/models/models.dart';
import 'package:flutter/material.dart';
import '../screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'List View 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_rounded, name: 'List View 2', screen: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alerts', screen: const AlertScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': ((context) => const HomeScreen()),
  //   'listview1': ((context) => const Listview1Screen()),
  //   'listview2': ((context) => const Listview2Screen()),
  //   'alert': ((context) => const AlertScreen()),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // En onGenerateRoute solo entra si la ruta que va a generar no existe
    print(settings);

    // Metodo para controlar si la ruta no existe
    return MaterialPageRoute(
      builder: (context) => AlertScreen()
    );
  }
}