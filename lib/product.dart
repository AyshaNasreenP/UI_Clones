import 'package:all_ui/properties.dart';
import 'package:flutter/material.dart';
//import 'package:ladylaecom/properties.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:readmore/readmore.dart';

//import 'navbar.dart';
import 'navigation.dart';


String selectedValue = "1";
List <String> dropdownItems = ["1","2","3","4"];

class product extends StatefulWidget {
  const product({super.key});


  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {

  //String selectedValue = 'Option 1'; // Default selected value

  // Define the list of dropdown items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[appbar1,appbar2])
            ),
          ),
          //backgroundColor: appcl,
          leading: Row(
            children: [
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Botnavi()),
                  );
                },
                child: Icon(Icons.arrow_back_outlined,
                  color: Colors.black,),
              ),


            ],
          ),



          title:
          TextFormField(

            decoration:

            InputDecoration(

              filled: true,
              fillColor: Colors.white,


              prefixIcon: Icon(Icons.search,
                color: Colors.black,),


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
                height: 75,
                width: double.infinity,
                //color: loccl,
                child:
                Row(

                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset("assets/image.png"),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Description of the product",
                            style:txtrow,

                          ),
                        ),
                        Row(
                          children: [
                            Text("₹479.00",
                                style: price),
                            Icon(Icons.check_sharp,color: Colors.amber,),
                            Text("prime",
                              style: prime,)
                          ],
                        ),

                      ],


                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Sponsored",
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.info,color: Colors.grey,size: 20,)
                    ],
                  ),


                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,1,1,1),
                      child: Row(
                        children: [
                          Text("Visit the xy store",
                            style: store,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(120,1,1,1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Text("3"),
                                ),
                                RatingBar.builder(

                                  initialRating: 3,
                                  wrapAlignment: WrapAlignment.end,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 15,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,

                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Text("875")

                              ],

                            ),
                          ),


                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,1,1,1),
                      child: ReadMoreText("Jaspo SLOG Plastic Cricket Full Size Bat (34” X 4.5” inch) for All Age Group (SLOG Cricket BAT)Jaspo SLOG Plastic Cricket Full Size Bat (34” X 4.5” inch) for All Age Group (SLOG Cricket BAT)",
                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        // moreStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),colorClickableText: Colors.grey,
                        // style: TextStyle(
                        //   //fontSize: 20
                        // ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/choice.png",height: 30,
                            width: 110,),
                        ),
                        Text('for "plastic bat"',
                          style: TextStyle(
                              fontWeight: FontWeight.w500
                          ),)
                      ],
                    )

                  ],
                ),
              ),


              Stack(

                children: [
                  Container(

                      width: double.infinity,

                      child:
                      Column(
                        children: [
                          CarouselSlider.builder(



                              options: CarouselOptions(

                                height: 500,

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


                              itemCount: 5,
                              itemBuilder: (BuildContext context,
                                  int itemIndex,
                                  int pageViewIndex,
                                  )
                              {

                                return
                                  Container(

                                    width:double.infinity ,
                                    //  width: screenSize .width,
                                    //   margin: EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(

                                      image: DecorationImage(


                                        //filterQuality: FilterQuality.low,
                                        // colorFilter: ColorFilter.mode(
                                        //     crsl.withOpacity(0.5),
                                        //     BlendMode.softLight),



                                        image: AssetImage("assets/image.png"),
                                        fit: BoxFit.fill,
                                        //
                                      ),

                                      // gradient: LinearGradient(
                                      //     begin: Alignment.center,
                                      //     end: Alignment.bottomCenter,
                                      //     colors: <Color> [crsl, white]),
                                      //
                                      // //Image.asset("assets/image.png",fit: BoxFit.fitWidth,width: double.infinity,);
                                    ),





                                  );

                                //Image.asset("assets/image.png",fit: BoxFit.fill,width: double.infinity,);


                              }



                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: DotsIndicator(
                              dotsCount: 5,
                              //position: ,

                              //items.length,
                              // position: ,
                            ),
                          )

                        ],
                      )
                    // CarouselSlider.builder(
                    //
                    //
                    //
                    //     options: CarouselOptions(
                    //
                    //       height: 500,
                    //
                    //       aspectRatio: 1/2,
                    //       viewportFraction: 1.0,
                    //       initialPage: 0,
                    //       enableInfiniteScroll: true,
                    //       reverse: false,
                    //       autoPlay: true,
                    //       autoPlayInterval: Duration(seconds: 3),
                    //       autoPlayAnimationDuration: Duration(milliseconds: 800),
                    //       autoPlayCurve: Curves.fastOutSlowIn,
                    //       //enlargeCenterPage: true,
                    //       enlargeFactor: .5,
                    //       // onPageChanged: callbackFunction,
                    //       scrollDirection: Axis.horizontal,
                    //
                    //     ),
                    //
                    //
                    //     itemCount: 15,
                    //     itemBuilder: (BuildContext context,
                    //         int itemIndex,
                    //         int pageViewIndex,
                    //         )
                    //     {
                    //
                    //       return
                    //         Container(
                    //           width: 400,
                    //           //  width: screenSize .width,
                    //           //   margin: EdgeInsets.symmetric(horizontal: 5.0),
                    //           decoration: BoxDecoration(
                    //
                    //             image: DecorationImage(
                    //
                    //
                    //               //filterQuality: FilterQuality.low,
                    //               // colorFilter: ColorFilter.mode(
                    //               //     crsl.withOpacity(0.5),
                    //               //     BlendMode.softLight),
                    //
                    //
                    //
                    //               image: AssetImage("assets/image.png"),
                    //               fit: BoxFit.fill,
                    //               //
                    //             ),
                    //
                    //             // gradient: LinearGradient(
                    //             //     begin: Alignment.center,
                    //             //     end: Alignment.bottomCenter,
                    //             //     colors: <Color> [crsl, white]),
                    //             //
                    //             // //Image.asset("assets/image.png",fit: BoxFit.fitWidth,width: double.infinity,);
                    //           ),
                    //
                    //
                    //
                    //
                    //
                    //         );
                    //
                    //       //Image.asset("assets/image.png",fit: BoxFit.fill,width: double.infinity,);
                    //
                    //
                    //     }
                    //
                    //
                    //
                    // ),


                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xFFb12704),
                          borderRadius:BorderRadius.circular(35)

                      ),


                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("60%\noff",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                      //color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          //color: Color(0xefc5bbbb),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Color(0x3ad9d2d2),
                                borderRadius:BorderRadius.circular(35)

                            ),
                            child: Icon(Icons.share_outlined))),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(8,450,8,8),
                    child:
                    Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color(0x3ad9d2d2),
                            borderRadius:BorderRadius.circular(35)

                        ),

                        child: Icon(Icons.favorite_outline,color: Colors.grey,)),
                  )
                  // padding: const EdgeInsets.fromLTRB(8,470,8,8),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("200 bought in past month | 1k+ viewed in past month",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(

                      //TextAlign textAlign = TextAlign.start
                        text:  const TextSpan(
                            text: "-60% ",
                            style: TextStyle(
                                color: Colors.red,fontSize: 30
                            ),
                            children: [
                              TextSpan(
                                text: " ₹",style: TextStyle(
                                fontSize: 18,color: Colors.black,

                              ),
                              ),
                              TextSpan(
                                text: "479 ",style: TextStyle(
                                  fontSize: 23,color: Colors.black),
                              ),
                              TextSpan(
                                  text: "\n\nM.R.P: ",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    // decoration: TextDecoration.lineThrough
                                  )
                              ),
                              TextSpan(
                                  text: "₹1,199",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      decoration: TextDecoration.lineThrough)
                              ),
                              TextSpan(
                                  text: "\n\nInclusive of all taxes",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,)

                              ),
                              TextSpan(
                                  text: "\nGet ₹50 cashback.",
                                  style: TextStyle(
                                    color: Colors.cyan,
                                    fontSize: 18,)

                              ),
                              TextSpan(
                                  text: "Pay only ",
                                  style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  )

                              ),
                              TextSpan(
                                  text: " ₹472.00",
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.lineThrough,
                                  )

                              ),
                              TextSpan(
                                  text: "  ₹422.00",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    // decoration: TextDecoration.lineThrough,
                                  )

                              ),
                              TextSpan(
                                  text: " for this order with Amazon Pay Later. ",
                                  style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  )

                              ),
                              TextSpan(
                                  text: "Active now.",
                                  style: TextStyle(
                                    color: Colors.cyan,
                                    fontSize: 18,)

                              ),
                            ]
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Total: ₹479",style:
                            TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18

                            ),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: RichText(text: const TextSpan(text: "FREE Prime delivery ",
                                style: TextStyle(color: Colors.black,
                                    fontSize: 18
                                  //fontWeight: FontWeight.bold
                                ),
                                children: [
                                  TextSpan(
                                      text: " Friday, 13 October.",style: TextStyle(
                                      color: Colors.black,

                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)
                                  ),

                                  TextSpan(
                                      text: " Details.",
                                      style: TextStyle(
                                        color: Colors.cyan,
                                        fontSize: 18,)

                                  ),
                                ]
                            ),


                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text("Deliver to type an address",style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 18,)
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("In stock",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.green
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white70

                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Qty: ',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                // SizedBox(height: 10),
                                // Text(
                                //
                                //   selectedValue,
                                //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                // ),
                                //SizedBox(height: 20),
                                DropdownButton<String>(
                                  //elevation: 50,
                                  underline: SizedBox(),
                                  //iconDisabledColor:,
                                  value: selectedValue,
                                  onChanged: ( newValue) {
                                    setState(() {
                                      selectedValue = newValue!;
                                    });
                                  },
                                  items: dropdownItems.map((String item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                ),



                              ],
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(

                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(50),
                                primary: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),



                              ),



                              // style: ElevatedButton.styleFrom(
                              //
                              //     minimumSize: const Size.fromHeight(50),
                              onPressed: (){}, child: Text("Add to Cart",)

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(

                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(50),
                                primary: buy,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),



                              ),

                              // style: ElevatedButton.styleFrom(
                              //
                              //     minimumSize: const Size.fromHeight(50),
                              onPressed: (){}, child: Text("Buy Now",)

                          ),
                        )


                      ],
                    ),
                  ),
                ),
              )



            ],

          ),
        )
    );
  }
}
