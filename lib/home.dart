import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dating_card/card.dart';
import 'package:dating_card/constant.dart';
import 'package:dating_card/story.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CircleNavBar(
        activeIcons: [
          Icon(Icons.person, color: primayColor),
          Icon(Icons.home, color: Colors.black),
          Icon(Icons.favorite, color: Colors.black),
          Icon(Icons.person, color: primayColor),
          Icon(Icons.home, color: Colors.black),
        ],
        inactiveIcons: [
          Column(
            children: [
              Icon(Icons.home, color: primayColor),
              Text(
                "그는",
                style: TextStyle(color: primayColor),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.home,
                color: Color(0xff2b2b2b),
              ),
              Text(
                "있다",
                style: TextStyle(
                  color: Color(0xff2b2b2b),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.home,
                color: Color(0xff2b2b2b),
              ),
              Text(
                "그는",
                style: TextStyle(
                  color: Color(0xff2b2b2b),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.home,
                color: Color(0xff2b2b2b),
              ),
              Text(
                "있다",
                style: TextStyle(
                  color: Color(0xff2b2b2b),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.home,
                color: Color(0xff2b2b2b),
              ),
              Text(
                "그는",
                style: TextStyle(
                  color: Color(0xff2b2b2b),
                ),
              ),
            ],
          ),
        ],
        color: Colors.white,
        circleColor: Colors.white,
        height: 50,
        circleWidth: 40,

        // tabCurve: ,
        padding: const EdgeInsets.only(left: 0, right: 0, bottom: 0),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(0),
          bottomLeft: Radius.circular(0),
        ),
        shadowColor: Colors.black,
        circleShadowColor: Color(0xff2f2f2f),
        elevation: 0,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.black, Colors.black],
        ),
        circleGradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.black,
            Color(0xff2f2f2f),
          ],
        ),
        activeIndex: 2,
      ),
      // bottomNavigationBar: ConvexAppBar(
      //   height: 30,
      //   backgroundColor: Colors.black,
      //   elevation: 0,
      //   items: [
      //     TabItem(icon: Icons.home, title: 'Home'),
      //     TabItem(icon: Icons.map, title: 'Discovery'),
      //     TabItem(icon: Icons.add, title: 'Add'),
      //     TabItem(icon: Icons.message, title: 'Message'),
      //     TabItem(icon: Icons.people, title: 'Profile'),
      //   ],
      //   onTap: (int i) => print('click index=$i'),
      // ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xff0d0d0d),
                  Colors.black,
                ],
              )),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xff2b2b2b),
                      ),
                      Text(
                        "하얗게 웃는다",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "하얗게 웃는",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Color(0xff2b2b2b),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              size: 14,
                              color: primayColor,
                            ),
                            Text(
                              "29,930",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: primayColor,
                              ),
                              child: SizedBox(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              storyBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  Widget storyBuilder() {
    return Container(
      height: cardHeight(context),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, idx) => MyStory(),
      ),
    );
  }
}
