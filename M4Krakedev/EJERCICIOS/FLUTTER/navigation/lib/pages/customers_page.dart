import 'package:flutter/material.dart';

class CustomersPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back)),
        ),
        body: const Center(
          child: Text('PAGINA DE CLIENTES'),
        ));
  }
}