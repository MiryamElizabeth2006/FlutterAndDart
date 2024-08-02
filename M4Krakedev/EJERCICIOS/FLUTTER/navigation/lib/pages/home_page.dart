import 'package:flutter/material.dart';
import 'package:navigation/pages/routes.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [MaterialButton(onPressed: (){
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsPage()));
          Navigator.pushNamed(context, Routes.products);
        },
        color: Colors.green,
        child:const Text('IR A PRODUCTOS'),
        ),
        MaterialButton(onPressed: (){
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomersPage()));
          Navigator.pushNamed(context, Routes.customers);
        },
        color: Colors.blue,
        child:const Text('IR A CLIENTES'),
        ),
        
        MaterialButton(onPressed: (){
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomersPage()));
          Navigator.pushNamed(context, Routes.listview);
        },
        color: Colors.blue,
        child:const Text('IR A LISTVIEW BÁSICO '),
        ),
        ],
      ),
      );
  }
  
}