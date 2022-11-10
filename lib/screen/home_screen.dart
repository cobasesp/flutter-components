import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de componentes"),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) => ListTile(
          title: const Text("Ruta ejemplo"),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {}
        )), 
        separatorBuilder: ((context, index) => const Divider()), 
        itemCount: 10
      ),
    );
  }
}