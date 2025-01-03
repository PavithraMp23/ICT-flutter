import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'AppBar',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: const Color.fromARGB(184, 219, 76, 152),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(255, 177, 168, 244),
        /*body: Center(
          child: Text(
        'Hello',
        style: TextStyle(
            fontSize: 40.8,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic),
      )),*/
        body: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: Text('text1', style: TextStyle(fontSize: 45))),
              Text('text2', style: TextStyle(fontSize: 45)),
              Text('text3', style: TextStyle(fontSize: 40)),
            ]));
  }
}
//blue arguments, green widgets
