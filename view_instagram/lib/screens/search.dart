import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: double.infinity,
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //search_topic_button widget
                    Container(
                      margin: const EdgeInsets.all(3),
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {}, 
                        child: const Row(
                          children: [
                            Icon(Icons.tv),
                            Text('IGTV'),
                          ],
                        )
                      )
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Wrap(
                children: [
                  Container(
                      width: 137,
                      height: 137,
                      color: Colors.grey,
                      child: const Text('', style: TextStyle(color: Colors.amber),),
                    ),
                    Container(
                      width: 274,
                      height: 274,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 137,
                      height: 137,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 137,
                      height: 137,
                      color: Colors.grey,
                    ),
                    
                  
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}