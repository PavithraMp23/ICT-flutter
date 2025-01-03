import 'package:flutter/material.dart';

class HomeScreen6 extends StatelessWidget {
  const HomeScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController EmailController = TextEditingController();
    final password = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'T.e.x.t.f.i.e.l.d',
            style: TextStyle(fontWeight: FontWeight.w100, fontSize: 34),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: EmailController,
                decoration: const InputDecoration(
                    hintText: 'Email',
                    border:
                        OutlineInputBorder()), /*outlineinput inherits inputborder*/
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Password', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(EmailController.text);
                    print(password.text);
                  },
                  child: const Text('login')),
            ],
          ),
        ));
  }
}
