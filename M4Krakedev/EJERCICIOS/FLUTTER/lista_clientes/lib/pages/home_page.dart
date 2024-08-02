
import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/routes.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [MaterialButton(onPressed: (){
           //Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomersPage()));
            Navigator.pushNamed(context, Routes.customers);
          },
          child:const Text('Ir a Clientes')
          ),
         ],
      ),
    );
  }
}