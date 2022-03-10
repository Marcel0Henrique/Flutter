import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //* Controlador para poder pegar as informações do campo
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 25,
          ),
          child: Column(
            //? faz a coluna ocupar o espaço minimo
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                //? Adicionando o controlador ao widget
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'exemplo@email.com',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                //? obscuretext oculta os caracteres que foram digitados
                //*obscureText: true,
                //? Mostra um teclado voltado para digitar email
                keyboardType: TextInputType.emailAddress,

                //* Segundo metodo para pegar as informações
                onChanged: OnChanged,

                //* Terceiro metodo para pegar as informações
                onSubmitted: OnSubmitted,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: login,
                  child: const Text('Entrar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    print(emailController.text);
    emailController.clear();
  }

  void OnChanged(String text) {
    print(text);
  }

  void OnSubmitted(String text) {
    print(text);
  }
}
