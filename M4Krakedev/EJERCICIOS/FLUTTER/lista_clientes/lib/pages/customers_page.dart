
import 'package:flutter/material.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back)),
        ),
        body:ListView(
          children: const <Widget>[
            ListTile(
              title: Text("Juan Perez"),
              subtitle: Text('Cliente 1'),
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
             ListTile(
              title: Text("Liliana Paez"),
              subtitle: Text('Cliente 2'),
              leading: Icon(
                Icons.person,
                color: Color.fromARGB(255, 133, 29, 165),
              ),
            ),
            ListTile(
              title: Text("Maria Martinez"),
              subtitle: Text('Cliente 3'),
              leading: Icon(
                Icons.person,
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text("Daniel Garcia"),
              subtitle: Text('Cliente 4'),
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text("Isabella Rodriguez"),
              subtitle: Text('Cliente 5'),
              leading: Icon(
                Icons.person,
                color: Colors.purple,
              ),
            ),
            ListTile(
              title: Text("Luna Fernandez"),
              subtitle: Text('Cliente 6'),
              leading: Icon(
                Icons.person,
                color: Colors.yellow,
              ),
            ),
            ListTile(
              title: Text("Carlos Lopez"),
              subtitle: Text('Cliente 7'),
              leading: Icon(
                Icons.person,
                color: Colors.pink,
              ),
            ),
            ListTile(
              title: Text("Jose Maria"),
              subtitle: Text('Cliente 8'),
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
            ),
            ListTile(
              title: Text("Laura Alvarez"),
              subtitle: Text('Cliente 9'),
              leading: Icon(
                Icons.person,
                color: Colors.orange,
              ),
            ),
            ListTile(
              title: Text("Sofia Aguilar"),
              subtitle: Text('Cliente 10'),
              leading: Icon(
                Icons.person,
                color: Colors.brown,
              ),
            ),
          ],
        ));
  }
}