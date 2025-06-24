import 'package:flutter/material.dart';
import 'package:hello_world/screens/first_screen.dart';
import 'package:hello_world/screens/home_screen.dart';
import 'package:hello_world/screens/home_screen2.dart';
import 'package:hello_world/screens/home_screen3.dart';
import 'package:hello_world/screens/home_screen4.dart';
import 'package:hello_world/screens/home_screen5.dart';
import 'package:hello_world/screens/home_screen6.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Navigation',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 242, 111, 216))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        )); //navigation cheyan vendi.Ram-il pushing nadakum.
                  },
                  child: const Text('Screen 1')),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 250, 208, 131))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen2()));
                  },
                  child: const Text('Screen 2')),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 111, 233, 242))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen3()));
                  },
                  child: const Text('Screen 3')),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 111, 242, 163))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen4(),
                        ));
                  },
                  child: const Text('Screen 4')),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 148, 111, 242))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen5(),
                        ));
                  },
                  child: const Text('Screen 5')),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 242, 120, 111))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen6(),
                        ));
                  },
                  child: const Text('Screen 6')),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 201, 242, 111))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FirstScreen(),
                        ));
                  },
                  child: const Text('Screen 7'))
            ],
          ),
        ));
  }
}
