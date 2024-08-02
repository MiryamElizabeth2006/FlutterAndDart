
import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/customer_page.dart';


class CustomersListPage extends StatelessWidget {
  final List <Customers> customers=[
    Customers(name:'Cliente 1',
    description: 'Cliente1'),
    Customers(name:'Cliente 2',
    description: 'Cliente2'),
    Customers(name:'Cliente 3',
    description: 'Cliente3'),
    Customers(name:'Cliente 4',
    description: 'Cliente4'),
    Customers(name:'Cliente 5',
    description: 'Cliente5'),
    Customers(name:'Cliente 6',
    description: 'Cliente6'),
    Customers(name:'Cliente 7',
    description: 'Cliente7'),
    Customers(name:'Cliente 8',
    description: 'Cliente8'),
    Customers(name:'Cliente 9',
    description: 'Cliente9'),
    Customers(name:'Cliente 10',
    description: 'Cliente10')
        
  ];

CustomersListPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: customers.length,
          itemBuilder: (context, index) {
            return ListTile(
                  title: Text(customers[index].name),
                  subtitle: Text(customers[index].description),
            );
          },
        )
        );
  }
}