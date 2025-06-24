//flutter pub get vazhi anu packages install cheyune
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hello_world/model/user.dart';
import 'package:http/http.dart' as http;

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});
  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<User> user = [];
  fetchUsers() async {
    final response =
        await http.get(/*synchnronous and asynchronous programming*/
            Uri.parse("https://jsonplaceholder.org/users"));
    if (response.statusCode == 200) {
      final List jsonResponse = json.decode(
          response.body); /*json response has a head(metdata) and a body*/
      print(jsonResponse);
      final data =
          jsonResponse.map((userData) => User.fromMap(userData)).toList();
      user = data;
      setState(() {});
    } else {
      print('cannot fetch data.....');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: user.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(user[index].firstname),
          subtitle: const Text('userexpl@outlook.com'),
        ),
      ),
    );
  }
}
