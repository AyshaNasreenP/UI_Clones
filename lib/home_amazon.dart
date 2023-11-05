import 'package:all_ui/product.dart';
import 'package:all_ui/properties.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'models.dart';
// import 'package:ladylaecom/product.dart';
// import 'package:ladylaecom/properties.dart';

//import 'model.dart';
//import 'navbar.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // get numberTruthList => null;
  // final _image=[
  //
  // ];

  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[appbar1,appbar2])
          ),
        ),
        //backgroundColor: appcl,

        title: Padding(
          padding: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 8),
          child: TextFormField(

            decoration: InputDecoration(

              filled: true,
              fillColor: Colors.white,


              prefixIcon: Icon(Icons.search,
                color: Colors.black,),

              //prefixIcon: Icon(Icons.search,),
              // prefixIcon: Align(
              //   widthFactor: 1.0,
              //   heightFactor: 1.0,
              //   child: Container(
              //     decoration: BoxDecoration(
              //
              //     ),
              //     child: Icon(
              //     Icons.search
              // ),
              //   ),
              // ),
              hintText: "Search product hear",
              suffixIcon: Icon(Icons.photo_camera),
              contentPadding: const EdgeInsets.only(
                  left: 14.0, bottom: 8.0, top: 8.0),

              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(10),


              ),

            ),
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[row1,row2])
              ),
              height: 50,
              //color: loccl,
              child:  Row(

                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.add_location),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Deliver to the address saved Location Details  ",
                      style:txtst,
                      //TextStyle:txt
                      //(
                      //fontSize: 15,
                      //fontWeight: FontWeight.bold
                      // ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.arrow_drop_down)),

                ],
              ),
            ),

            Container(
              height: 110,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lis.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => product()),
                          );

                        },
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
                                          image: AssetImage(lis[index].image),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                                Text(lis[index].text)
                              ],
                            )


                        ),
                      ),
                    );
                  }
              ),
            ),

            //ListView(),
            // Size screensize =MediaQuery.of(context).size;
            Container(

              width: double.infinity,

              child:
              CarouselSlider.builder(



                  options: CarouselOptions(

                    height: 300,

                    aspectRatio: 1/2,
                    viewportFraction: 1.0,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    //enlargeCenterPage: true,
                    enlargeFactor: .5,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,

                  ),


                  itemCount: sale.length,
                  itemBuilder: (BuildContext context,
                      int itemIndex,
                      int pageViewIndex,

                      )
                  {

                    return
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const product()),
                          );
                        },
                        child: Container(
                          //
                          //  width: screenSize .width,
                          //   margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(

                            image: DecorationImage(


                              //filterQuality: FilterQuality.low,
                              // colorFilter: ColorFilter.mode(
                              //     crsl.withOpacity(0.5),
                              //     BlendMode.softLight),



                              image: AssetImage(sale[itemIndex].image),
                              // image: AssetImage(lis[index].image),
                              fit: BoxFit.cover,
                              //
                            ),
                            gradient: LinearGradient(
                                begin: Alignment.center,
                                end: Alignment.bottomCenter,
                                colors: <Color> [crsl, white]),
                            //
                            // //Image.asset("assets/image.png",fit: BoxFit.fitWidth,width: double.infinity,);
                          ),





                        ),
                      );
                    //Image.asset("assets/image.png",fit: BoxFit.fill,width: double.infinity,);


                  }



              ),


            ),

            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lis.length,
                  itemExtent:150.0,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(4,0,4,8),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => product()));
                        },
                        child: Container(

                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(lis[index].image),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 1,
                                  offset: Offset(0, 3),
                                )
                                ]


                              //color: Colors.cyan,

                              // child:  Column(
                              //   children: [
                              //
                              //     Container(
                              //        // decoration: BoxDecoration(
                              //        //  borderRadius: BorderRadius.circular(5),
                              //        //   image: DecorationImage(
                              //        //       image: AssetImage("assets/image.png")),
                              //       child: Image.asset("assets/image.png")
                              //       ),
                              //
                              //
                              //
                              //     //),
                              //
                              //
                              //
                              //   ],
                              // )

                            )
                        ),
                      ),
                    );
                  }
              ),
            ),
            // const Text("Deals for you",
            //   textAlign: TextAlign.start,
            //   style: TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.bold,
            //
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("NEW COLLECTION",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Container(
                height:400,
                //height: 380,
                width: 400,


                child:
                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1 / 1,
                      //crossAxisSpacing: 10,
                      mainAxisSpacing: 10,

                    ),

                    itemCount:NewCollection.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> product()));
                        },
                        child: Container(
                          //color: Colors.black,
                            height: 600,
                            width: 500,

                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(5,0,5,0),
                                  child:

                                  Container(
                                    height: 150,
                                    alignment: Alignment.topRight,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        image:  DecorationImage(
                                          image: AssetImage(NewCollection[index].image),
                                          //image: AssetImage(lis[index].image),
                                          fit: BoxFit.fill,
                                        ),
                                        // color: Colors.amber,

                                        borderRadius: BorderRadius.circular(5)),
                                    //child: Image.asset("assets/image.png",fit: BoxFit.fill,),

                                  ),
                                ),
                                Text(NewCollection[index].text,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),),




                              ],

                            )

                        ),
                      );




                    }

                ),

              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     child: Align(
            //       alignment: Alignment.bottomLeft,
            //       child: Text("See all offers",
            //         style: TextStyle(
            //           fontSize: 17,
            //           color: Colors.cyan
            //           //fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //
            //   ),
            // ),

          ],
        ),

      ),
    );
  }
}
