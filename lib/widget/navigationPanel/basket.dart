import 'package:flutter/material.dart';

class Basket extends StatelessWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown[200],
          title: const Text("Корзина")),
        body: const Text('Hello!'),
      ),
    );
  }
}
