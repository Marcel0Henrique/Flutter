import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//* Criando o widget MyAPP
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//* Criando o Widge HomePage que é a pagina principal
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void decrement() {
    int n = 0;
  }

  void increment() {
    int n = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        //? Criando o APPBar
        title: const Text("Contador",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 119, 12, 4),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //? Criando o corpo do app como uma coluna
        //? definindo os itens que vão ter dentro do corpo
        children: [
          const Text(
            "Liberado",
            style: TextStyle(
              color: Color.fromARGB(255, 19, 124, 23),
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          const Text(
            "0",
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: decrement,
                child: const Text("Saiu"),
              ),
              TextButton(
                onPressed: increment,
                child: const Text("Entrou"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
