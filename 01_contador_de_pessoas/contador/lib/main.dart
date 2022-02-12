import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//* Criando o widget MyAPP
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

//* Criando o Widge HomePage que é a pagina principal
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
        children: const [
          Text(
            "Liberado",
            style: TextStyle(
              color: Color.fromARGB(255, 19, 124, 23),
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          Text(
            "0",
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
