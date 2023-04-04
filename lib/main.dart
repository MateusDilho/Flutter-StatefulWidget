import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      theme: ThemeData.dark(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double tamanho = 300;
  double barra = 0;
  double verm = 0;
  double verd = 0;
  double azul = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Exemplo'),
        actions: [
          IconButton(
            onPressed: () {
              if (tamanho > 50) {
                setState(() {
                  tamanho -= 50;
                });
              }
            },
            icon: const Icon(
              Icons.remove,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                tamanho = 50;
              });
            },
            icon: const Text('S'),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                tamanho = 300;
              });
            },
            icon: const Text('M'),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                tamanho = 500;
              });
            },
            icon: const Text('L'),
          ),
          IconButton(
            onPressed: () {
              if (tamanho < 500) {
                setState(() {
                  tamanho += 50;
                });
              }
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: Column(
        
        children: [
          Center(
            child: Icon(
              Icons.alarm,
              size: tamanho,
              color:
                  Color.fromRGBO(verm.toInt(), verd.toInt(), azul.toInt(), 1),
            ),
          ),
          Slider(
            min: 0,
            max: 255,
            value: verm,
            divisions: 255,
            onChanged: (double value) {
              setState(() {
                verm = value;
              });
            },
            activeColor: Colors.red,
          ),
          Slider(
            min: 0,
            max: 255,
            value: verd,
            divisions: 255,
            onChanged: (double value) {
              setState(() {
                verd = value;
              });
            },
            activeColor: Colors.green,
          ),
          Slider(
            min: 0,
            max: 255,
            value: azul,
            divisions: 255,
            onChanged: (double value) {
              setState(() {
                azul = value;
              });
            },
            activeColor: Colors.blue,
          )
        ],
      ),
    );
  }
}