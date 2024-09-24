import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.clear_all, size: 24, color: Colors.grey,),
          title: const Text('Plaza'),
          centerTitle: true,
          bottom: Tab(
            height: 70,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.cake, size: 48, color: Colors.white70),
                  Icon(Icons.cake, size: 48, color: Colors.white70),
                  Icon(Icons.cake, size: 48,),
                  Icon(Icons.cake, size: 48, color: Colors.white70),
                  Text('Food', style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.network("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ytimg.com%2Fvi%2FgeInqZnmi8I%2Fmaxresdefault.jpg&f=1&nofb=1&ipt=43f1dd5e2955814d8f2de3d447f8d9a020833143dc9ef7ddf58e6b3239eb4fdb&ipo=images", fit: BoxFit.cover,),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 10,
                        ),
                        Text('name?'),
                      ],
                    ),
                    Text('1 hour ago?')
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 40,
                child: const Text('Is this a thread for ask anything about pizza?', style: TextStyle(fontSize: 16),),
              ),
              Container(
                width: double.infinity,
                height: 20,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.cake,
                        size: 18,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(5, 0, 50, 0),
                        child: const Text('Cake', style: TextStyle(fontSize: 14),),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.comment,
                            color: Colors.grey,
                            size: 18,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: const Text('Comment')
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
