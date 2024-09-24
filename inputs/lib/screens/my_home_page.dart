import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('about me'),
      ),
      body: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Nombre",
              icon: Icon(Icons.cake, size: 20,),
              iconColor: Colors.blue,
              // labelText: "nombre?",
              label: Text('nombre'),
              suffixIcon: Icon(Icons.add, size: 24,)
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Apellidos",
              icon: Icon(Icons.cake, size: 20,),
              iconColor: Colors.cyan,
              // labelText: "nombre?",
              label: Text('apellidos'),
              suffixIcon: Icon(Icons.add, size: 24,)
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Edad",
              icon: Icon(Icons.cake, size: 20,),
              iconColor: Colors.red,
              // labelText: "nombre?",
              label: Text('edad'),
              suffixIcon: Icon(Icons.add, size: 24,)
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Hobbie",
              icon: Icon(Icons.cake, size: 20,),
              iconColor: Colors.brown,
              // labelText: "nombre?",
              label: Text('hobbie'),
              suffixIcon: Icon(Icons.add, size: 24,)
            ),
          )
        ],
      ),
    );
  }
}