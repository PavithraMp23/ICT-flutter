import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        backgroundColor: const Color(0xFF075E54),
        title: const Text(
          'WhatsApp',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                Text('CHATS', style: TextStyle(color: Colors.white)),
                Text('STATUS', style: TextStyle(color: Colors.white)),
                Text('CALLS', style: TextStyle(color: Colors.white))
              ],
            )),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfsN-cFS6YbyLBh4MRlWaBPrPBl8l2FYLT-A&s'),
            ),
            title: Text(
              'Prabha',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Kurachu Kanji edukate ?'),
            trailing: Text('12.05'),
          ),
          Divider(
            color: Color.fromARGB(22, 0, 0, 0),
            thickness: 0.5,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmwXZWgd7hyzz-SveNHEsz6xPclpNesYSTtQ&s'),
            ),
            title: Text(
              'Nagavalli',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Inneyk durgastami??'),
            trailing: Text('Yesterday'),
          ),
          Divider(
            color: Color.fromARGB(22, 0, 0, 0),
            thickness: 0.5,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1438128132888752130/60mc9LF6_400x400.jpg'),
            ),
            title: Text(
              '+18 7346 11346',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Entha keshavaaa',
            ),
            trailing: Text('13.45'),
          ),
          Divider(
            color: Color.fromARGB(22, 0, 0, 0),
            thickness: 0.5,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpUjC-_lfaTE8yqy8actVlaH-N45TjBLuew&s'),
            ),
            title: Text(
              '+81 7776 78946',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Mamanodu onum thonale '),
            trailing: Text('28/09/2024'),
          ),
          Divider(
            color: Color.fromARGB(22, 0, 0, 0),
            thickness: 0.5,
          ),
          /* Container(
              transformAlignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.message),
                backgroundColor: Color.fromARGB(255, 11, 130, 116),
              ),
            )*/
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 11, 130, 116),
        child: const Icon(Icons.message),
      ),
    );
  }
}
