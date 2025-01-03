import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class StoryWidget extends StatelessWidget {
  final String src, name;
  StoryWidget({super.key, required this.src, required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.yellow],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.6),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(src),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
