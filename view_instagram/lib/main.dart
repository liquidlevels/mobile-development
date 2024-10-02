import 'package:flutter/material.dart';
import 'package:view_instagram/screens/home_page.dart';
import 'package:view_instagram/screens/profile.dart';
import 'package:view_instagram/screens/search.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyHomePage(),
          // child: Profile(),
          // child: Search(),
        ),
      ),
    );
  }
}
