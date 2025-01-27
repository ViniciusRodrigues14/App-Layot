import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HomePage(titulo: 'Programa layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.titulo});

  final String titulo;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.titulo),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 0, 242, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    Text(
                      'Layout Superior',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 24, 106, 3),
                      child: const Text('Primeira Coluna'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 24, 106, 3),
                      child: const Text('Segunda Coluna'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 24, 106, 3),
                      child: const Text('Terceira Coluna'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.orange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.yellow,
                      size: 50.0,
                    ),
                    Text(
                      'Layout Inferior',
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
