import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            //? Adiciona um espaçamento de forma horizontal, na esqueda e na direita
            horizontal: 10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  //* o Expanded tenta ocupar o maior espaço disponivel, sem ele acontece um erro por causa do Row
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Adicione uma tarefa",
                        hintText: "Ex: Ler um livro",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  //? Cria um espaço em branco entre o TextFiel e o ElevatedButton
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 0, 197, 232),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Text("Você possui 0 tarefas pendentes"),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Limpar Tudo'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 0, 197, 232),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
