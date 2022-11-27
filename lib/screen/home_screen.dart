import 'package:components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de componentes"),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) => ListTile(
          title: Text(AppRoutes.menuOptions[index].name),
          leading: Icon(AppRoutes.menuOptions[index].icon, color: Colors.indigo,),
          trailing: const Icon(Icons.keyboard_arrow_right_outlined),
          onTap: () {

            // Metodo 1 - Generando un materialpage route
            // final route = MaterialPageRoute(
            //   builder: (context) => Listview1Screen()
            // );
            // Navigator.push(context, route);

            // Metodo2 - sencillo, solo con pushnamed y el nombre de la ruta∫
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);

          }
        )), 
        separatorBuilder: ((context, index) => const Divider()), 
        itemCount: AppRoutes.menuOptions.length
      ),
    );
  }
}