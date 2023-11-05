import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'models.dart';
//import 'package:flutterinst/model.dart';


class ProfileView extends StatefulWidget {
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Color buttonColor =Color(0xff1968e6);
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:

      Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: 50,
          // ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/chaineye.jpeg'
                          ),
                          fit: BoxFit.fill

                      )
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '30',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(

                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '130',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(

                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '254',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(

                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16),
            child: RichText(
              textScaleFactor: 1.0,

              text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Ladyla',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        )
                    ),
                    TextSpan(
                        text: '\nShopping & retail',
                        style: TextStyle(
                            color: Colors.indigo
                        )
                    ),
                    TextSpan(
                        text: '\nJwellary\nHair Accessories\nHandmade Product',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14
                        )
                    ),
                  ]
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                autofocus: true,
                style: ElevatedButton.styleFrom(
                    primary: buttonColor,
                    minimumSize: Size(165, 40)
                  //minimumSize: const Size.fromHeight(20),
                  //shadowColor: Colors.black
                ),

                onPressed: (){


                }, child: const Padding(
                  padding: EdgeInsets.fromLTRB(10,2,10,2),
                  child: Row(
                    children: [
                      Text("Follow",
                        style: TextStyle(
                            color: Colors.white
                        ),),
                      // Icon(Icons.arrow_drop_down_outlined,color: Colors.black,)
                    ],
                  )

              ),
              ),
              ElevatedButton(
                  autofocus: true,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white70,
                    minimumSize: Size(165, 40),
                    //shadowColor: Colors.blueAccent


                  ),

                  onPressed: (){}, child: Padding(
                padding: const EdgeInsets.fromLTRB(10,2,10,2),
                child: Text("Message", style: TextStyle(
                    color: Colors.black
                ),),
              )),
              ElevatedButton(
                //autofocus: true,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white70,
                    minimumSize: Size(5, 40),
                  ),

                  onPressed: (){}, child: Icon(Icons.person_add,color: Colors.black,))
            ],
          ),
          Container(
            height: 110,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: highlight.length,
                itemBuilder: (BuildContext con,index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        height: 70,
                        width: 70,
                        // color: Colors.cyan,

                        child:  Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(highlight[index].image),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),
                            Text(highlight[index].text)
                          ],
                        )


                    ),
                  );
                }
            ),
          ),

        ],
      ),
    );


  }
}