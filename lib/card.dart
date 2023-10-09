// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:dating_card/constant.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({required this.img});
  final img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardwidth(context), // Adjust width as needed
      height: cardHeight(context),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(20), // Adjust border radius as needed
        border: Border.all(
          color: Color.fromARGB(255, 192, 191, 191), // Border color
          width: 1.0, // Border width
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: const Color.fromARGB(255, 188, 186, 186), // Shadow color
        //     blurRadius: 10, // Adjust blur radius as needed
        //     offset: Offset(0, 4), // Adjust offset as needed
        //   ),
        // ],
        image: DecorationImage(
          image: AssetImage(img), // Replace with your image asset path
          fit: BoxFit.cover, // Adjust the fit as needed (cover, contain, etc.)
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: cardwidth(context),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  )),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: cardwidth(context),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        // color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Color.fromARGB(255, 93, 92, 92),
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
                            Text(
                              "그는 하얗게 웃었어 25",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "하얗게 웃는다, 라는 표현은 (아마) 그녀의 모국어에만 있다. 아득하게, 쓸쓸하게, 부서지기 쉬운 개끗함으로 웃는 얼굴, 또는 그런 웃음.",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff72f3f7),
                                width: 2,
                              ),
                            ),
                            child: GradientIcon(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff72f3f7),
                                  Color(0xff6350fc),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              size: 25.0,
                              icon: Icons.favorite,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Image.asset(
                      "assets/drop-down.png",
                      color: Colors.white,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCard2 extends StatelessWidget {
  MyCard2({required this.img});
  final img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardwidth(context), // Adjust width as needed
      height: cardHeight(context),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(20), // Adjust border radius as needed
        border: Border.all(
          color: Color.fromARGB(255, 192, 191, 191), // Border color
          width: 1.0, // Border width
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: const Color.fromARGB(255, 188, 186, 186), // Shadow color
        //     blurRadius: 10, // Adjust blur radius as needed
        //     offset: Offset(0, 4), // Adjust offset as needed
        //   ),
        // ],
        image: DecorationImage(
          image: AssetImage(img), // Replace with your image asset path
          fit: BoxFit.cover, // Adjust the fit as needed (cover, contain, etc.)
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: cardwidth(context),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  )),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: cardwidth(context),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        // color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Color.fromARGB(255, 93, 92, 92),
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
                            Text(
                              "그는 하얗게 웃었어 25",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 130,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: primayColor.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: primayColor)),
                              child: Text(
                                "💖 하얗게 웃었어 ",
                                style: TextStyle(
                                  color: primayColor,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 90,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: Colors.black)),
                                  child: Text(
                                    "🍸 하얗게 웃",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 90,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: Colors.black)),
                                  child: Text(
                                    "🍶 하얗게 웃",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 90,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: Colors.black)),
                                  child: Text(
                                    "🤝 하얗게 웃",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 90,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: Colors.black)),
                                  child: Text(
                                    "INFP",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff72f3f7),
                                width: 2,
                              ),
                            ),
                            child: GradientIcon(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff72f3f7),
                                  Color(0xff6350fc),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              size: 25.0,
                              icon: Icons.favorite,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Image.asset(
                      "assets/drop-down.png",
                      color: Colors.white,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final LinearGradient gradient;
  final double size;

  GradientIcon({
    required this.icon,
    required this.gradient,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(bounds);
      },
      child: Icon(
        icon,
        size: size,
        color: Colors
            .white, // You can set any color here, it will be masked by the shader
      ),
    );
  }
}

class GradientBorderIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final LinearGradient gradient;
  final Color borderColor;
  final double borderWidth;

  GradientBorderIcon({
    required this.icon,
    required this.iconSize,
    required this.gradient,
    required this.borderColor,
    required this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: iconSize + 2 * borderWidth,
      height: iconSize + 2 * borderWidth,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: gradient,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: Center(
        child: Icon(
          icon,
          size: iconSize,
          color: Colors
              .white, // You can set any color here, it will be masked by the gradient
        ),
      ),
    );
  }
}
