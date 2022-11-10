import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  final games = const [
    "Megaman",
    "Metal gear",
    "Hunt",
    "League of legends",
    "Valorant"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview 2"),
          backgroundColor: Colors.indigo,
        ),
        // Se usa el separator para poner un divider ye lbuilder es igual pero sin separador
        body: ListView.separated(
          itemBuilder: ((context, i) => ListTile(
            title: Text(games[i]), 
            trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.indigo),
            onTap: () {
              final game = games[i];
              print(game);
            }  
          )), 
          separatorBuilder: ((context, index) => const Divider()), 
          itemCount: games.length,
        )
    );
  }
}
