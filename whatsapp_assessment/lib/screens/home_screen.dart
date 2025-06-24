import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/chat_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ['Prabha', 'Nagavali', '+91-9866-8765', '+87-2-93834'];
    List<String> images = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfsN-cFS6YbyLBh4MRlWaBPrPBl8l2FYLT-A&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmwXZWgd7hyzz-SveNHEsz6xPclpNesYSTtQ&s',
      'https://pbs.twimg.com/profile_images/1438128132888752130/60mc9LF6_400x400.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpUjC-_lfaTE8yqy8actVlaH-N45TjBLuew&s'
    ];
    List<String> chat = [
      'Kurachu Kanji edukate ?',
      'Inneyk durgastami??',
      'Entha keshavaaa',
      'Mamanodu onum thonale '
    ];
    List<String> time = ['12.06', '07.08', 'yesterday', '28/01/2024'];
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Color(0xFFFFFFFF),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Color(0XFFFFFFFF),
          )
        ],
        backgroundColor: const Color(0xFF075E54),
        title: const Text(
          'WhatsApp',
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text('CHATS',
                                style: TextStyle(color: Colors.white))),
                        TextButton(
                            onPressed: () {},
                            child: Text('STATUS',
                                style: TextStyle(color: Colors.white))),
                        TextButton(
                            onPressed: () {},
                            child: Text('CALLS',
                                style: TextStyle(color: Colors.white))),
                      ]),
                )
                /*Text('CHATS', style: TextStyle(color: Colors.white)),
                Text('STATUS', style: TextStyle(color: Colors.white)),
                Text('CALLS', style: TextStyle(color: Colors.white))*/
              ],
            )),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => ChatWidget(
                name: names[index],
                backgroundImage: images[index],
                chat: chat[index],
                time: time[index],
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 11, 130, 116),
        child: const Icon(Icons.message),
      ),
    );
  }
}
