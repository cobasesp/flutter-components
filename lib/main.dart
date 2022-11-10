import 'package:components/screen/listview1_screen.dart';
import 'package:components/screen/listview2_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Listview2Screen());
  }
}
