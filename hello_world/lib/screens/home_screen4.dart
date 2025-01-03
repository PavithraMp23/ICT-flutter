import 'package:flutter/material.dart';

class HomeScreen4 extends StatelessWidget {
  const HomeScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Screen 4',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(height: 300, width: 300, color: Colors.amber[800]),
              Container(height: 250, width: 250, color: Colors.amber[700]),
              Container(height: 200, width: 200, color: Colors.amber[600]),
              Container(height: 150, width: 150, color: Colors.amber),
              Container(height: 100, width: 100, color: Colors.amber[300]),
              Container(
                height: 50,
                width: 50,
                color: Colors.amber[200],
              ),
              Container(
                height: 15,
                width: 15,
                color: Colors.amber[100],
              )
            ],
          ),
        ));
  }
}
