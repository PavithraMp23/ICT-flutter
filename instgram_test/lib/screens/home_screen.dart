import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instgram_test/custom_widgets/post_widget.dart';
import 'package:instgram_test/custom_widgets/story_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
            height: 150,
            width: 150,
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(color: Colors.black, Icons.add_box_outlined)),
          IconButton(
              onPressed: () {},
              icon: Icon(color: Colors.black, Icons.favorite_border_outlined)),
          IconButton(
              onPressed: () {},
              icon: Icon(color: Colors.black, Icons.message_outlined)),
        ],
      ),
      body: Column(
        children: [
          Divider(thickness: 1.0, color: Colors.black12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryWidget(
                  src:
                      'https://i.pinimg.com/236x/db/1f/9a/db1f9a3eaca4758faae5f83947fa807c.jpg',
                  name: 'Anamika',
                ),
                StoryWidget(
                  src:
                      'https://i.pinimg.com/236x/60/7c/fe/607cfe5c405025fad5913eb202ec0219.jpg',
                  name: 'Mini',
                ),
                StoryWidget(
                  src:
                      'https://i.pinimg.com/736x/51/ec/d0/51ecd0532e8d08227b15fa65a55cf522.jpg',
                  name: 'Kushal',
                ),
                StoryWidget(
                  src:
                      'https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  name: 'Mike',
                ),
                StoryWidget(
                  src:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKj5KdeSgoWfk-dgpM32GIxwbK6HqZzDn8Xg&s',
                  name: 'Camel',
                ),
                StoryWidget(
                  src:
                      'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=612x612&w=0&k=20&c=tyLvtzutRh22j9GqSGI33Z4HpIwv9vL_MZw_xOE19NQ=',
                  name: 'Laila',
                )
              ],
            ),
          ),
          Divider(thickness: 1.0, color: Colors.black12),
          /*Column(
            children: [
              ListTile(
                title: Text('username1'),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://photosbulk.com/wp-content/uploads/instagram-profile-picture-black-and-white_32.webp'),
                ),
                trailing: Icon(Icons.more_vert),
              ),
              Container(
                height: 290,
                color: Colors.black12,
              ),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.chat_bubble_sharp)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                  SizedBox(
                    width: 210,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.save_alt)),
                ],
              ),
              Text(
                '109999 Likes',
                textAlign: TextAlign.right,
              )
            ],
          )*/
          Expanded(
            child: ListView(children: [
              PostWidget(
                imageUrl:
                    'https://photosbulk.com/wp-content/uploads/instagram-profile-picture-black-and-white_32.webp',
                postUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm7oLQE9ekykYmm61ZBbbvJtzD3hmBiVL9qQ&s',
                userName: 'cOsm_ic',
              ),
              PostWidget(
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Naga_Chaitanya_at_Shailaja_Reddy_Alludu.png/220px-Naga_Chaitanya_at_Shailaja_Reddy_Alludu.png',
                postUrl:
                    'https://www.hindustantimes.com/ht-img/img/2024/12/04/1600x900/naga_chaitanya_sobhita_dhulipala_1733329187545_1733329187766.jpeg',
                userName: 'lookisn_ar6',
              ),
            ]),
          )
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(label: '', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: '', icon: Icon(Icons.search)),
        BottomNavigationBarItem(label: '', icon: Icon(Icons.add_box_outlined)),
        BottomNavigationBarItem(
            label: '', icon: Icon(Icons.movie_creation_outlined)),
        BottomNavigationBarItem(label: '', icon: Icon(Icons.person_2_outlined)),
      ]),
    );
  }
}
