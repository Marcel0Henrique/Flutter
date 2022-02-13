import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //* Player 0 == X
  //* Player 1 == O
  int player = 0;
  int i = 0;

  Map<int, String?> toe = {
    1: null,
    2: null,
    3: null,
    4: null,
    5: null,
    6: null,
    7: null,
    8: null,
    9: null,
  };

  //* Criando a logica do jogo
  void move(int n) {
    setState(() {
      if (toe[n] == null) {
        if (player == 0) {
          toe[n] = 'X';
          player = 1;
        } else {
          toe[n] = "O";
          player = 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 70, 136),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 10),
            child: Text(
              'Tic Tac Toe',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Vez do Jogador:  ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  player == 0 ? 'X' : 'O',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: player == 0 ? Colors.red : Colors.blue,
                  ),
                ),
              ],
            ),
          ),

          //* Linha 1
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //*Area 1
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: toe[1] != null
                          ? toe[1] == 'X'
                              ? Colors.red[800]
                              : Colors.blue[800]
                          : Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      move(1);
                    },
                    child: Text(
                      toe[1] == null ? '' : toe[1].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                //*Area 2
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: toe[2] != null
                          ? toe[2] == 'X'
                              ? Colors.red[800]
                              : Colors.blue[800]
                          : Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      move(2);
                    },
                    child: Text(
                      toe[2] == null ? '' : toe[2].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                //*Area 3
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: toe[3] != null
                          ? toe[3] == 'X'
                              ? Colors.red[800]
                              : Colors.blue[800]
                          : Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      move(3);
                    },
                    child: Text(
                      toe[3] == null ? '' : toe[3].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //* Linha 2
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //*Area 4
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: toe[4] != null
                          ? toe[4] == 'X'
                              ? Colors.red[800]
                              : Colors.blue[800]
                          : Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      move(4);
                    },
                    child: Text(
                      toe[4] == null ? '' : toe[4].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                //*Area 5
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: toe[5] != null
                          ? toe[5] == 'X'
                              ? Colors.red[800]
                              : Colors.blue[800]
                          : Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      move(5);
                    },
                    child: Text(
                      toe[5] == null ? '' : toe[5].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                //*Area 6
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: toe[6] != null
                          ? toe[6] == 'X'
                              ? Colors.red[800]
                              : Colors.blue[800]
                          : Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      move(6);
                    },
                    child: Text(
                      toe[6] == null ? '' : toe[6].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //* Linha 2
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //*Area 4
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: toe[7] != null
                          ? toe[7] == 'X'
                              ? Colors.red[800]
                              : Colors.blue[800]
                          : Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      move(7);
                    },
                    child: Text(
                      toe[7] == null ? '' : toe[7].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                //*Area 5
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: toe[8] != null
                          ? toe[8] == 'X'
                              ? Colors.red[800]
                              : Colors.blue[800]
                          : Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      move(8);
                    },
                    child: Text(
                      toe[8] == null ? '' : toe[8].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                //*Area 6
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: toe[9] != null
                          ? toe[9] == 'X'
                              ? Colors.red[800]
                              : Colors.blue[800]
                          : Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    child: Text(
                      toe[9] == null ? '' : toe[9].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      move(9);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
