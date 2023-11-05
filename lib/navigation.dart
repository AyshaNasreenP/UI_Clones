import 'package:all_ui/homeinst.dart';
import 'package:all_ui/songs.dart';
import 'package:all_ui/spotifynav.dart';
import 'package:flutter/material.dart';

// import 'package:ladylaecom/correction.dart';
// import 'package:ladylaecom/home.dart';
// import 'package:ladylaecom/login.dart';

import 'home_amazon.dart';
import 'homespot.dart';
import 'login.dart';




class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0 ;

  final pages = [
    //home(),
    home(),
    song(),
    homeinst(),

  ];

  void tap(index)
  {
    setState(() {
      _index= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note_outlined),label: "Spotify"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_sharp),label: "Instagram"),


        ],
        currentIndex: _index,
        onTap: tap,

      ),

    );
  }
}



