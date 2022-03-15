import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //* controladores
  final TextEditingController tarefaController = TextEditingController();

  //? todos é lista em ingles
  List<String> tarefas = [];

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
                  Expanded(
                    child: TextField(
                      controller: tarefaController,
                      decoration: const InputDecoration(
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
                    onPressed: () {
                      //* Cria variavel text que recebe o texto do textField
                      String text = tarefaController.text;

                      setState(() {
                        //* Adiciona o texto na lista
                        tarefas.add(text);
                      });

                      //* Limpa o texto que ficou no textfield
                      tarefaController.clear();
                    },
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
              Flexible(
                //* flexible permite que não ocorra quebra no listView
                child: ListView(
                  //* o listView pode ser colocado dentro de um sizedbox para
                  //* poder definir o tamanho, senão acontece um erro
                  shrinkWrap: true,
                  //? shrinkWrap permite que a lista tenha um tamanho responsivo,
                  //? dependendo da quantidade de itens dentro dela
                  children: [
                    //? ListTile é um item da lista
                    for (String itens in tarefas)
                      ListTile(
                        title: Text(itens),
                        subtitle: Text('15/03/2022'),
                        leading: Icon(Icons.save),
                        onTap: () {
                          print('Tarefa: $itens');
                        },
                      ),
                  ],
                ),
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
