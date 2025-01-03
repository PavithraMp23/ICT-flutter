import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool buttonState = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        //wherever it is safe, angotu widget mattum
        child: Scaffold(
            body: SafeArea(
                child: Center(
                    child: ElevatedButton(
      onPressed: () {
        buttonState = !buttonState;
        //print(buttonState); //floating action button nokanam
        setState(() {}); //state set cheyan vendi alel false arikum
      },
      child: (buttonState == true) ? const Text('Yay') : const Text('Nay'),
    )))));
  }
}
