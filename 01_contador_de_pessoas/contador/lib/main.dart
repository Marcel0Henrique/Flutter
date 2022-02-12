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
    int n = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 99, 3, 167),

      //? Criando o APPBar
      appBar: AppBar(
        title: const Text("Contador",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
        backgroundColor: const Color.fromARGB(255, 119, 12, 4),
      ),

      //? Criando o corpo do app como uma coluna
      //? teve que colocar dentro de um Container para poder adicionar a imagem de fundo
      body: Container(
        //* Adicionando imagem de fundo
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image.jpg'),
            //? Manipulando imagem para preencher a tela
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          //* Centralizando
          mainAxisAlignment: MainAxisAlignment.center,

          //? definindo os itens que vão ter dentro do corpo
          children: [
            const Text(
              "Entrada Liberada",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 175, 6),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            //* Criando espaçamento usando o Padding
            const Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "0",
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),

            //*Criando Row e os botoes
            Row(
              //* Centralizando
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(90, 90),
                    //? Muda a cor quando pressiona o botão
                    primary: Colors.black,
                    //? Arredondando a borda
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: decrement,
                  child: const Text(
                    "Saiu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                //? Foi usado o SizedBox para dar o espaçamento entre os botoes
                const SizedBox(
                  width: 35,
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(90, 90),
                    //? Muda a cor quando pressiona o botão
                    primary: Colors.black,
                    //? Arredondando a borda
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: increment,
                  child: const Text(
                    "Entrou",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
