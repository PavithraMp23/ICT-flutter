import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text('Second', style: TextStyle(fontSize: 34)))),
        body: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(' HI ', style: TextStyle(fontSize: 40)),
              Text(' Hello ', style: TextStyle(fontSize: 40)),
              Text(' Bye ', style: TextStyle(fontSize: 40)),
            ],
          ),
        ));
  }
}
