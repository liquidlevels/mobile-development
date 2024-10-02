import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 400,
          // color: Colors.amber,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('username'),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
        actions: const [
          Icon(Icons.menu),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        // padding: EdgeInsets.all(15),
        height: 55,
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
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const CircleAvatar(
                    // backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.imgflip.com%2F2%2F7yc6oz.jpg&f=1&nofb=1&ipt=0aecbb4fe2bf10fe04a0d9577c51dc50fb0a168bdbbd8f89403892b0d969b993&ipo=images'),
                    backgroundColor: Colors.grey,
                    radius: 48,
                  ),
                  Container(
                    width: 280,
                    margin: const EdgeInsets.all(5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('55'),
                            Text('Posts')
                          ],
                        ),
                        Column(
                          children: [
                            Text('152'),
                            Text('Followers')
                          ],
                        ),
                        Column(
                          children: [
                            Text('37'),
                            Text('Following')
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your name'),
                  Text('Description', style: TextStyle(color: Colors.grey),),
                  Text('Bio'),
                  Text('www.website.com', style: TextStyle(color: Colors.blueAccent),),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {}, 
                      child: const Text('Following'),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {}, 
                      child: const Text('Message'),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {}, 
                      child: const Icon(Icons.arrow_drop_down)
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          // backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.tenor.com%2Fimages%2F45c8e0c4db03c47eb41ae9cf452e9571%2Ftenor.gif&f=1&nofb=1&ipt=66466bebb0e028929cf063eece15276cadf1f10c3ef044ffde713e8701b8dc71&ipo=images'),
                          backgroundColor: Colors.grey,
                        ),
                        Text('New'),
                      ],
                    ),
                  ),
                  Container(
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          // backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.tenor.com%2Fimages%2F45c8e0c4db03c47eb41ae9cf452e9571%2Ftenor.gif&f=1&nofb=1&ipt=66466bebb0e028929cf063eece15276cadf1f10c3ef044ffde713e8701b8dc71&ipo=images'),
                          backgroundColor: Colors.grey,
                        ),
                        Text(''),
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        // backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.tenor.com%2Fimages%2F45c8e0c4db03c47eb41ae9cf452e9571%2Ftenor.gif&f=1&nofb=1&ipt=66466bebb0e028929cf063eece15276cadf1f10c3ef044ffde713e8701b8dc71&ipo=images'),
                        backgroundColor: Colors.grey,
                      ),
                      Text(''),
                    ],
                  ),
                  const Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        // backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.tenor.com%2Fimages%2F45c8e0c4db03c47eb41ae9cf452e9571%2Ftenor.gif&f=1&nofb=1&ipt=66466bebb0e028929cf063eece15276cadf1f10c3ef044ffde713e8701b8dc71&ipo=images'),
                        backgroundColor: Colors.grey,
                      ),
                      Text(''),
                    ],
                  ),
                  const Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        // backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.tenor.com%2Fimages%2F45c8e0c4db03c47eb41ae9cf452e9571%2Ftenor.gif&f=1&nofb=1&ipt=66466bebb0e028929cf063eece15276cadf1f10c3ef044ffde713e8701b8dc71&ipo=images'),
                        backgroundColor: Colors.grey,
                      ),
                      Text(''),
                    ],
                  ),
                  const Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        // backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.tenor.com%2Fimages%2F45c8e0c4db03c47eb41ae9cf452e9571%2Ftenor.gif&f=1&nofb=1&ipt=66466bebb0e028929cf063eece15276cadf1f10c3ef044ffde713e8701b8dc71&ipo=images'),
                        backgroundColor: Colors.grey,
                      ),
                      Text(''),
                    ],
                  ),
                  const Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        // backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.tenor.com%2Fimages%2F45c8e0c4db03c47eb41ae9cf452e9571%2Ftenor.gif&f=1&nofb=1&ipt=66466bebb0e028929cf063eece15276cadf1f10c3ef044ffde713e8701b8dc71&ipo=images'),
                        backgroundColor: Colors.grey,
                      ),
                      Text(''),
                    ],
                  ),
                  const Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        // backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.tenor.com%2Fimages%2F45c8e0c4db03c47eb41ae9cf452e9571%2Ftenor.gif&f=1&nofb=1&ipt=66466bebb0e028929cf063eece15276cadf1f10c3ef044ffde713e8701b8dc71&ipo=images'),
                        backgroundColor: Colors.grey,
                      ),
                      Text(''),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.apps, size: 32,)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.account_box_outlined, size: 32,))
              ],
            ),
            Container(
              padding: const EdgeInsets.all(1),
              height: 300,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.grey,
                    child: const Text('')
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}