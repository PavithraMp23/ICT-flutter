import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String userName;
  final String imageUrl;
  final String postUrl;
  const PostWidget({
    super.key,
    required this.userName,
    required this.imageUrl,
    required this.postUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
          contentPadding: EdgeInsets.all(1),
          title: Text(userName),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          color: Colors.black,
          child: Center(
            child: Image(image: NetworkImage(postUrl)),
          ),
        ),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
            IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
            IconButton(onPressed: () {}, icon: Icon(Icons.send)),
            SizedBox(
              width: 210,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.save_alt)),
          ],
        ),
        Text(
          '109999 Likes',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          '@username1 Cogito ergo sum!?',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          '#jeevitham #oru #train #anu',
          style: TextStyle(
              color: const Color.fromARGB(255, 16, 116, 216),
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 15,
        )
      ]),
    );
  }
}
