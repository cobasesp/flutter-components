import 'package:flutter/material.dart';
import '../screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': ((context) => const HomeScreen()),
    'listview1': ((context) => const Listview1Screen()),
    'listview2': ((context) => const Listview2Screen()),
    'alert': ((context) => const AlertScreen()),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // En onGenerateRoute solo entra si la ruta que va a generar no existe
    print(settings);

    // Metodo para controlar si la ruta no existe
    return MaterialPageRoute(
      builder: (context) => AlertScreen()
    );
  }
}