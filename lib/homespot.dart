import 'package:all_ui/shows.dart';
import 'package:flutter/material.dart';
// import 'package:flutterspotify/appbar.dart';
// import 'package:flutterspotify/recent.dart';
// import 'package:flutterspotify/topmix.dart';
// import 'package:flutterspotify/shows.dart';


import 'package:carousel_slider/carousel_slider.dart';

import 'appbarspot.dart';
import 'fresh.dart';
import 'models.dart';
class homespot extends StatefulWidget {
  const homespot({super.key});

  @override
  State<homespot> createState() => _homespotState();
}

class _homespotState extends State<homespot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [
              SliverAppBar(
                //automaticallyImplyLeading: false,
                expandedHeight: 50,
                collapsedHeight: 50,
                toolbarHeight: 50,
                pinned: true,
                stretch: true,
                backgroundColor: Colors.black,
                leading:appbar(),
                leadingWidth: double.infinity,
              ),

            ];
          },
          body: SingleChildScrollView(
              child:Container(
                // height: double.infinity,
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Recently played",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white
                          ),),
                      ),
                    ),
                    //recent(),
                    SizedBox(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Your top mixes",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white
                          ),),
                      ),
                    ),
                    //topmix(),
                    const SizedBox(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("New shows",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white
                          ),),
                      ),
                    ),
                    shows(),
                    SizedBox(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Fresh new music",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white
                          ),),
                      ),
                    ),
                    fresh(),
                  ],
                ),
              )
          )
      ),
    );
  }
}
