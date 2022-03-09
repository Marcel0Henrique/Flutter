import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//* Criando o widget MyAPP
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: true,
    );
  }
}

//* Criando o Widge HomePage que é a pagina principal
//? para o estado da aplicação poder ser alterada é necessario criar o StatefullWidget,
//?já que o StatelessWidget é estatico
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
