import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String backgroundImage;
  final String name;
  final String chat;
  final String time;
  const ChatWidget({
    super.key,
    required this.backgroundImage,
    required this.name,
    required this.chat,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(backgroundImage)),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(chat),
      trailing: Text(time),
    );
  }
}
