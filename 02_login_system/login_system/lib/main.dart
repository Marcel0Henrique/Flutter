import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//*Criando Widget MyApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: true,
    );
  }
}

//* Criando a tela de login
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //? Cor de fundo
      backgroundColor: Colors.blue[600],

      //? criando coluna para colocar os widgets
      body: Column(
        //? ALinhando os widgets de forma centralizada
        mainAxisAlignment: MainAxisAlignment.center,

        //*Adicionando widgets
        children: [Text('Sign In')],
      ),
    );
  }
}
