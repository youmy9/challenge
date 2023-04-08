import 'package:flutter/material.dart';

import 'Util/faces.dart';
import 'Util/tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      bottomNavigationBar: BottomNavigationBar(
        items: [
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //nav
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //hi Sura

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Hi, Sura!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '5 July,2023',
                            style: TextStyle(color: Colors.cyan[600]),
                          ),
                        ],
                      ),

                      //notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.cyan[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.cyan[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //how do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad

                      Column(
                        children: [
                          Face(
                            face: '😔',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //fine
                      Column(
                        children: [
                          Face(
                            face: '😐',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'fine',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //well
                      Column(
                        children: [
                          Face(
                            face: '🙂',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'well',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //happy
                      Column(
                        children: [
                          Face(
                            face: '😀',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'happy',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey[100],
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Excercises',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //list view of ex
                  Expanded(
                    child: ListView(
                      children: [
                        tile(
                          icon: Icons.favorite,
                          exName: 'Reading speed',
                          exnumber: '8 Excercises',
                          olor: Colors.deepPurple,
                        ),
                        tile(
                          icon: Icons.library_books,
                          exName: 'Writing skills',
                          exnumber: '12 Excercises',
                          olor: Colors.pinkAccent,
                        ),



                        tile(
                          icon: Icons.person,
                          exName: 'Speaking skills',
                          exnumber: '16 Excercises',
                          olor: Colors.orangeAccent,
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
