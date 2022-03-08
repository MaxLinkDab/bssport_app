import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        appBar: AppBar(

          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text("Здесь пока что ничего нету")),
        body: const Text('это тестовая страница!'),
      ),
    );
  }
}
