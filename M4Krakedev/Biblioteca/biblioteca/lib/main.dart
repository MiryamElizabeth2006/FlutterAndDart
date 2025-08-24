import 'package:flutter/material.dart';
import 'views/home_page.dart';
import 'views/add_book_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Biblioteca Demo",
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.amber),
      routes: {
        '/add': (context) => const AddBookPage(),
      },
    );
  }
}
