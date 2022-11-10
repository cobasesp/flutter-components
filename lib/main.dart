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
      initialRoute: 'listview2',
      routes: {
        'listview1': ((context) => const Listview1Screen()),
        'listview2': ((context) => const Listview2Screen()),
        'alert': ((context) => const AlertScreen()),
      },
    );
  }
}
