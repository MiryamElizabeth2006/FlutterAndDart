import 'package:flutter/material.dart';
import 'package:navigation/pages/product_page.dart';

class ProductListPage extends StatelessWidget {
  final List <Product> products=[
    Product(name:'Producto 1',
    price: 10.0,
    description: 'Descripcion del producto 1',),
        Product(name:'Producto 2',
    price: 20.0,
    description: 'Descripcion del producto 2',),
        Product(name:'Producto 3',
    price: 30.0,
    description: 'Descripcion del producto 3',),
        Product(name:'Producto 4',
    price: 40.0,
    description: 'Descripcion del producto 4',),
        Product(name:'Producto 5',
    price: 50.0,
    description: 'Descripcion del producto 5',),
  ];

 ProductListPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
                  title: Text(products[index].name),
                  subtitle: Text(products[index].description),
                  trailing: Text('\$${products[index].price.toStringAsFixed(2)}'),
            );
          },
        )
        );
  }
}