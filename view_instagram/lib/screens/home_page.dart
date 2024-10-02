import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
              Icons.camera_alt_outlined,
            ),
        title: const Center(child: Text('Instagram', style: TextStyle(fontSize: 32),),),
        actions: const [
          Icon(Icons.send),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryItem(title: 'Your Story'),
                StoryItem(title: 'Your Story'),
                StoryItem(title: 'Your Story'),
                StoryItem(title: 'Your Story'),
                StoryItem(title: 'Your Story'),
                StoryItem(title: 'Your Story'),
                StoryItem(title: 'Your Story'),
              ]
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                MyCard(username: 'username', location: 'location',),
                MyCard(username: 'username', location: 'location',),
                MyCard(username: 'username', location: 'location',),
              ],
            )
          ),
        ]
      ),
      bottomNavigationBar: BottomAppBar(
        // padding: EdgeInsets.all(15),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {}, 
                    icon: const Icon(Icons.home_rounded, size: 32,),
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: const Icon(Icons.search, size: 32,),
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: const Icon(Icons.add, size: 32,),
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: const Icon(Icons.favorite, size: 32,),
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: const Icon(Icons.account_circle, size: 32,),
                  ),
                ],
              )
      ),
    );
  }
}

// Widget personalizado para las historias
class StoryItem extends StatelessWidget {
  final String title;

  const StoryItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[300],
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

// Widget personalizado para la tarjeta de publicación
class MyCard extends StatelessWidget {
  final String username;
  final String location;

  const MyCard({super.key, required this.username, required this.location});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[300],
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(username),
                  Text(location, style: const TextStyle(fontSize: 12,))
                ],
              ),
            ],
          ),
          trailing: const Icon(Icons.more_vert),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 300,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            SizedBox(width: 10),
            Icon(Icons.favorite_border),
            SizedBox(width: 5),
            Icon(Icons.comment_bank_rounded),
            SizedBox(width: 5),
            Icon(Icons.send),
            Spacer(),
            Icon(Icons.bookmark_border),
            SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
