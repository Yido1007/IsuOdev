// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            HeaderWidget(),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Color.fromRGBO(7, 5, 8, 1),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADİO FROM A SONG",
                          style: TextStyle(
                            color: Color.fromARGB(255, 170, 170, 170),
                            fontSize: 12,
                          ),
                        ),
                        TextRow("Quick Picks", "Play All"),
                        SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: size.width - 10,
                                child: Column(
                                  children: [
                                    AlbumItem("Astroworld", "Travis Scott",
                                        "assets/images/Astroworldd.jpg"),
                                    AlbumItem("Duman II", "Duman",
                                        "assets/images/DumanII.jpg"),
                                    AlbumItem("Rodeo", "Travis Scott",
                                        "assets/images/Rodeo.jpg"),
                                    AlbumItem("The Eminem Show", "Eminem",
                                        "assets/images/theeminemshow.jpg"),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  AlbumItem("Views", "Drake",
                                      "assets/images/views.jpg"),
                                  AlbumItem("Astroworld", "Travis Scott",
                                      "assets/images/Astroworldd.jpg"),
                                  AlbumItem("Duman II", "Duman",
                                      "assets/images/DumanII.jpg"),
                                  AlbumItem("Rodeo", "Travis Scott",
                                      "assets/images/Rodeo.jpg"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextRow("Forgotten Favotrite", "Play All"),
                        SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MusicBox("Astroworld", "Travis Scott",
                                  "assets/images/Astroworldd.jpg"),
                              MusicBox("Astroworld", "Travis Scott",
                                  "assets/images/Astroworldd.jpg"),
                              MusicBox("Duman II", "Duman",
                                  "assets/images/DumanII.jpg"),
                              MusicBox("Rodeo", "Travis Scott",
                                  "assets/images/Rodeo.jpg"),
                              MusicBox("The Eminem Show", "Eminem",
                                  "assets/images/theeminemshow.jpg"),
                              MusicBox(
                                  "Views", "Drake", "assets/images/views.jpg"),
                              MusicBox("Astroworld", "Travis Scott",
                                  "assets/images/Astroworldd.jpg"),
                              MusicBox("Duman II", "Duman",
                                  "assets/images/DumanII.jpg"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            MenuWidget(),
          ],
        ),
      ),
    );
  }

  Padding MusicBox(String album, String artist, String photo) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                photo,
                width: 150,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                album,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                artist,
                style: TextStyle(
                    color: const Color.fromARGB(255, 184, 184, 184),
                    fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }

  Row TextRow(String first, String second) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          first,
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 3, bottom: 3, right: 9, left: 9),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            second,
            style: TextStyle(
              color: Color.fromARGB(255, 170, 170, 170),
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  Widget AlbumItem(String album, String artist, String photo) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 75,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    album,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    artist,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 184, 184, 184),
                        fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Container MenuWidget() {
    return Container(
      width: double.infinity,
      color: Color.fromRGBO(33, 33, 33, 1),
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MenuItem("Home", Icons.home),
            MenuItem("Samples", Icons.play_circle),
            MenuItem("Explore", Icons.explore),
            MenuItem("Library", Icons.subscriptions),
            MenuItem("Upgrade", Icons.slideshow),
          ],
        ),
      ),
    );
  }

  Column MenuItem(String title, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Container HeaderWidget() {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(62, 36, 17, 1),
            Color.fromRGBO(48, 14, 32, 1),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/logo1.png",
                      width: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Music",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 27),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.podcasts,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/resim1.jpg"),
                      radius: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryItem("Energize"),
                CategoryItem("Workout"),
                CategoryItem("Rap"),
                CategoryItem("Relax"),
                CategoryItem("Pop"),
                CategoryItem("Feel Good"),
                CategoryItem("Feel Good"),
                CategoryItem("Rock"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container CategoryItem(String category) {
    return Container(
      padding: EdgeInsets.only(top: 8, bottom: 8, left: 15, right: 15),
      margin: const EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
          color: Color.fromARGB(28, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromARGB(22, 255, 255, 255),
          )),
      child: Text(
        category,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
      ),
    );
  }
}
