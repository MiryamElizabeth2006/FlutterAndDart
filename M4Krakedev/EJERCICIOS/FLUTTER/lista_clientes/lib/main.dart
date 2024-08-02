import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/customers_page.dart';
import 'package:lista_clientes/pages/home_page.dart';
import 'package:lista_clientes/pages/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), routes: {
        Routes.customers: (ctx) =>const CustomersPage(),
      }
    );
  }
}
