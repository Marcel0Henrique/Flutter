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
  int n = 0;

  void move() {
    n++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 81, 157),
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
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
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
                      backgroundColor: Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: move,
                    child: const Text(
                      'X',
                      style: TextStyle(
                          color: Colors.black,
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
                      backgroundColor: Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: move,
                    child: const Text(
                      'X',
                      style: TextStyle(
                          color: Colors.black,
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
                      backgroundColor: Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: move,
                    child: const Text(
                      'X',
                      style: TextStyle(
                          color: Colors.black,
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
                      backgroundColor: Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: move,
                    child: const Text(
                      'X',
                      style: TextStyle(
                          color: Colors.black,
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
                      backgroundColor: Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: move,
                    child: const Text(
                      'X',
                      style: TextStyle(
                          color: Colors.black,
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
                      backgroundColor: Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: move,
                    child: const Text(
                      'X',
                      style: TextStyle(
                          color: Colors.black,
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
                      backgroundColor: Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: move,
                    child: const Text(
                      'X',
                      style: TextStyle(
                          color: Colors.black,
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
                      backgroundColor: Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: move,
                    child: const Text(
                      'X',
                      style: TextStyle(
                          color: Colors.black,
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
                      backgroundColor: Colors.white,
                      fixedSize: const Size(80, 80),
                      primary: Colors.black,
                    ),
                    onPressed: move,
                    child: const Text(
                      'X',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
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
