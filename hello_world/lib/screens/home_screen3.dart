import 'package:flutter/material.dart';

class HomeScreen3 extends StatelessWidget {
  const HomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Third Screen',
            style: TextStyle(fontSize: 34),
          )),
        ),
        body: Center(
            child: Container(
          height: 200,
          width: 300,
          color: const Color.fromRGBO(71, 144, 217, 0.545),
          child: const Center(child: Text('HELLO')),
        )));
  }
}
