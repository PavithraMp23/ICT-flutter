import 'package:flutter/material.dart';

class HomeScreen5 extends StatelessWidget {
  const HomeScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen 5', style: TextStyle(fontSize: 35)),
          centerTitle: true,
        ),
        body: ListView(
          children: const [
            ListTile(
              title: Text('HAHA'),
              subtitle: Text('HIHI'),
              trailing: Text('HOHO'),
              leading: Icon(
                Icons.person,
                size: 33,
                color: Colors.black45,
              ),
            )
          ],
        ));
  }
}
