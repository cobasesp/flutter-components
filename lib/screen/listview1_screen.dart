import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

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
        appBar: AppBar(title: const Text("Listview 1")),
        body: ListView(children: [
          ...games
              .map((e) =>
                  ListTile(leading: Icon(Icons.verified_user), title: Text(e)))
              .toList()
        ]));
  }
}
