import 'package:components/screen/screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App', 
      // home: Listview2Screen(),
      initialRoute: 'home',
      routes: {
        'home': ((context) => const HomeScreen()),
        'listview1': ((context) => const Listview1Screen()),
        'listview2': ((context) => const Listview2Screen()),
        'alert': ((context) => const AlertScreen()),
      },
      onGenerateRoute: (settings) {
        // En onGenerateRoute solo entra si la ruta que va a generar no existe
        print(settings);

        // Metodo para controlar si la ruta no existe
        return MaterialPageRoute(
          builder: (context) => AlertScreen()
        );
      },
    );
  }
}
