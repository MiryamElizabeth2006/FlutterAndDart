
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalculatorPageState();
  }
}

class CalculatorPageState extends State<CalculatorPage> {
  int valor1 = 0;
  int valor2 = 0;
  int resultado = 0;

  final TextEditingController valor1Controller = TextEditingController(text: '0');
  final TextEditingController valor2Controller = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Calculadora",
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ingrese Valor 1"),
            TextField(
              controller: valor1Controller,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
              onChanged: (text) {
                valor1 = int.parse(text);
              },
            ),
            const SizedBox(height: 20),
            const Text("Ingrese Valor 2"),
            TextField(
              controller: valor2Controller,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
              onChanged: (text) {
                valor2 = int.parse(text);
              },
            ),
            const SizedBox(height: 20),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  resultado = valor1 + valor2;
                });
              },
              child: const Text("SUMAR"),
            ),
            const SizedBox(height: 20),
            Text(
              "Resultado: $resultado",
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}