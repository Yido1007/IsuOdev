// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite,
                            color: Colors.black87, size: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 8, bottom: 8.0, right: 20),
                        child: Icon(
                          Icons.send,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  // width: 50,
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          storyWidget("assets/images/p1.jpg", "Brad Pitt"),
                          storyWidget(
                              "assets/images/p2.jpg", "LeonardoDiCaprio"),
                          storyWidget("assets/images/p3.jpg", "MadsMikkelsen"),
                          storyWidget(
                              "assets/images/p4.jpg", "RobertDowneyJr."),
                          storyWidget("assets/images/p4.jpg", "RobertDowneyJr"),
                          storyWidget("assets/images/p5.jpg", "TomCruise"),
                          storyWidget("assets/images/p1.jpg", "Brad Pitt"),
                          storyWidget(
                              "assets/images/p2.jpg", "LeonardoDiCaprio"),
                          storyWidget("assets/images/p3.jpg", "MadsMikkelsen"),
                          storyWidget(
                              "assets/images/p4.jpg", "RobertDowneyJr."),
                          storyWidget("assets/images/p1.jpg", "BradPitt"),
                          storyWidget("assets/images/p5.jpg", "TomCruise"),
                        ],
                      ),
                    ),
                    PostItem("assets/images/p1.jpg", "assets/images/v1.jpg",
                        "Brad Pitt", "akaretler"),
                    PostItem("assets/images/p2.jpg", "assets/images/v2.jpg",
                        "LeonardoDiCaprio", "Galata"),
                    PostItem("assets/images/p3.jpg", "assets/images/v3.jpg",
                        "MadsMikkelsen", "KızKulei"),
                    PostItem("assets/images/p4.jpg", "assets/images/v4.jpg",
                        "RobertDowneyJr.", "Ortaköy"),
                    PostItem("assets/images/p5.jpg", "assets/images/v2.jpg",
                        "TomCruise", "Galata"),
                  ],
                ),
              )),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black12,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.home, size: 28, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.search, size: 28, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.smart_display,
                        size: 28, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:
                        Icon(Icons.favorite, size: 28, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.person, size: 28, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container PostItem(
          String avatar, String photo, String name, String location) =>
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            avatar,
                          ),
                          radius: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(photo),
              ),
              LikeCommentBox(),
              CommentBox("keyvan_arasteh",
                  "Çok iyi olmuş degerli hocam eline saglik.Miss benide etiketle. "),
              CommentBox("ramazan_sen", "helal be hocam. "),
              CommentBox("Yido", "elinize saglik hocam. "),
            ],
          ),
        ),
      );

  Padding LikeCommentBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.black87,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(Icons.comment_bank_outlined, color: Colors.black87),
            ],
          ),
          Icon(Icons.flag_circle_outlined, color: Colors.black87),
        ],
      ),
    );
  }

  Padding CommentBox(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(text: " "),
                  TextSpan(
                    text: comment,
                    style: TextStyle(
                      //  fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 12,
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

  Widget storyWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 35,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget storyWidget2() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/ahmet.jpg"),
            radius: 40,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Ahmetselim",
            style: TextStyle(
              fontSize: 11,
            ),
          )
        ],
      ),
    );
  }

  Widget storyWidget3() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/ramazan.jpg"),
            radius: 40,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "ramazan_sen",
            style: TextStyle(
              fontSize: 11,
            ),
          )
        ],
      ),
    );
  }
}
