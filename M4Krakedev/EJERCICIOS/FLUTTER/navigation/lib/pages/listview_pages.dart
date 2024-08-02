import 'package:flutter/material.dart';

class ListviewPages extends StatelessWidget {
  const ListviewPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text("Elemento1"),
            subtitle: Text("Este es el primer elemento"),
            leading: Icon(
              Icons.add_to_queue,
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text("Elemento2"),
            subtitle: Text("Este es el segundo elemento"),
            leading: Icon(
              Icons.add_to_queue,
              color: Colors.green,
            ),
          ),
          ListTile(
            title: Text("Elemento3"),
            subtitle: Text("Este es el tercer elemento"),
            leading: Icon(
              Icons.add_to_queue,
              color: Colors.purple,
            ),
          )
        ],
      )
    );
  }
}

