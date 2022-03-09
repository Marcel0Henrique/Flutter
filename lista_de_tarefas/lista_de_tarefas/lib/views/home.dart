import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'exemplo@email.com',
              border: OutlineInputBorder(),
              errorText: null,
              prefixIcon: Icon(Icons.email_outlined),
            ),
            //? obscuretext oculta os caracteres que foram digitados
            //*obscureText: true,
            //? Mostra um teclado voltado para digitar email
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
