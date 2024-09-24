import 'package:flutter/material.dart';
import 'package:list_view/widgets/item_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,
          physics: const ScrollPhysics(parent: ScrollPhysics(parent:AlwaysScrollableScrollPhysics())),
          children: const [
            Item(
              color: Colors.brown,
              text: 'topu',
              height: 100,
            ),
            Item(
              color: Colors.yellow,
              text: 'topu',
              height: 300,
            ),
            Item(
              color: Colors.blue,
              text: 'topu',
              height: 200,
            ),
            Item(
              color: Color(0xff2e86ab),
              text: 'topu',
              height: 100,
            ),
          ],
        )
    );
  }
}