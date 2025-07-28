import 'package:flutter/material.dart';
import 'package:flutter_faza/main_layout.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloFlutter(),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar flutter',
      body: Center(
        child: Text('Hello Flutter', style: TextStyle(
        fontSize: 24, 
        color: Colors.yellowAccent, 
        fontWeight: FontWeight.w500,
        backgroundColor: Colors.orange,
        ),),
      ),
    );
  }
}