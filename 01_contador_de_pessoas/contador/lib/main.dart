import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//* Criando o widget MyAPP
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//* Criando o Widge HomePage que é a pagina principal
//? para o estado da aplicação poder ser alterada é necessario criar o StatefullWidget,
//?já que o StatelessWidget é estatico
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    //* Se usa o setState para indicar para o APP que houve uma mudança no estado,
    //* no caso o valor da variavel count diminuiu ou aumentou
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  void increment() {
    setState(() {
      if (count < 20) {
        count++;
      }
    });
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
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
              ),
            ),

            //* Criando espaçamento usando o Padding
            Padding(
              padding: const EdgeInsets.all(50),
              child: Text(
                "$count",
                style: const TextStyle(
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
