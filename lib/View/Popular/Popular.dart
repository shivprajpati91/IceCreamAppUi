import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:food_designe/utils/rotues/routes_name.dart';
class popular extends StatefulWidget {
  const popular({super.key});

  @override
  State<popular> createState() => _popularState();
}


  int currentIndex = 0;

  int currentIndex2 = 0;

  int currentIndex3 = 0;

class _popularState extends State<popular> {
  @override

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height*2.4,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                ),),
              Container(
                height: MediaQuery.sizeOf(context).height*0.38,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xfffff9a9e),
                      Color(0xffffad0c4),

                    ]),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40))

                ),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                    Row(
                      children: [
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.08),
                        Text("Healthy",style: TextStyle(fontSize: 27,
                            fontWeight: FontWeight.w700,color: Colors.white),),
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.03),
                        // Container(
                        //     width: 170,
                        //     height: 40,
                        //     child: SearchBar(hintText: 'Berry juice',leading: Icon(Icons.search),),),
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.50,),

                        CircleAvatar(child: Icon(Icons.person,color: Colors.white,),
                          backgroundColor: Colors.black12,),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0,top: 10),
                      child: Row(
                        children: [
                          Text("Find Out Your",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,
                              color: Colors.white70),),
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                          Text("Favorite",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,
                              color: Colors.pink),),
                        ],
                      ),),
                    Padding(
                      padding: const EdgeInsets.only(right: 270.0),
                      child: Text("Juice",style: TextStyle(fontSize: 27,
                          fontWeight: FontWeight.bold,color: Colors.pink),),
                    ),
                    SizedBox(
                      child: SearchBar(leading:Icon(Icons.search,color: Colors.pink,),
                        autoFocus: true,hintText: "Acai berries",
                      ),
                      height: MediaQuery.sizeOf(context).height*0.055,
                      width: MediaQuery.sizeOf(context).width*0.9,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child:  Container(

                        height: MediaQuery.sizeOf(context).height*0.126,
                        width: MediaQuery.sizeOf(context).width*1.2,

                        child: Stack(

                          children: [

                            Row(
                              children: [
                                SizedBox(width: MediaQuery.sizeOf(context).width*0.0,),
                                Column(
                                  children: [
                                    Container(
                                        height: MediaQuery.sizeOf(context).height*0.086,
                                        width: MediaQuery.sizeOf(context).width*0.25,

                                        decoration: BoxDecoration(
                                          
                                          borderRadius: BorderRadius.circular(30),

                                    // gradient: LinearGradient(colors: [
                                    //      Color(0xfffff9a9e),
                                    //    Color(0xffffad0c4),
                                    //
                                    //     ]),
                                        ),
                                        child: Image.asset("Popularimage/cupcake.png",)


                                    ),
                                    Container(

                                    height: MediaQuery.sizeOf(context).height*0.04,
                                    width: MediaQuery.sizeOf(context).width*0.25,

                                      child: Text("     Cupcake",style: TextStyle(fontSize: 17,
                                          fontWeight: FontWeight.bold,color: Colors.white70),),
                                   ),

                                  ],
                                ),
                                SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                                Column(
                                  children: [
                                    Container(
                                        height: MediaQuery.sizeOf(context).height*0.086,
                                        width: MediaQuery.sizeOf(context).width*0.25,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          // gradient: LinearGradient(colors: [
                                          //   Color(0xfffff9a9e),
                                          //   Color(0xffffad0c4),
                                          //
                                          // ]),
                                        ),
                                        child: Image.asset("Popularimage/cake3.png",)


                                    ),
                                    Container(

                                      height: MediaQuery.sizeOf(context).height*0.04,
                                      width: MediaQuery.sizeOf(context).width*0.25,

                                      child: Text("     Cake",style: TextStyle(fontSize: 17,
                                          fontWeight: FontWeight.bold,color: Colors.white70),),
                                    ),

                                  ],
                                ),
                                SizedBox(width: MediaQuery.sizeOf(context).width*0.0,),
                                Column(
                                  children: [
                                    Container(


                                        height: MediaQuery.sizeOf(context).height*0.086,
                                        width: MediaQuery.sizeOf(context).width*0.25,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          // gradient: LinearGradient(colors: [
                                          //   Color(0xfffff9a9e),
                                          //   Color(0xffffad0c4),
                                          //
                                          // ]),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 0.0),
                                          child: Image.asset("Popularimage/browncake12.png",),
                                        )


                                    ),
                                    Container(

                                      height: MediaQuery.sizeOf(context).height*0.04,
                                      width: MediaQuery.sizeOf(context).width*0.25,

                                      child: Text("   Choclate",style: TextStyle(fontSize: 17,
                                          fontWeight: FontWeight.bold,color: Colors.white70),),
                                    ),

                                  ],
                                ),
                                SizedBox(width: MediaQuery.sizeOf(context).width*0.0,),
                                Column(
                                  children: [
                                    Container(
                                        height: MediaQuery.sizeOf(context).height*0.086,
                                        width: MediaQuery.sizeOf(context).width*0.25,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          // gradient: LinearGradient(colors: [
                                          //   Color(0xfffff9a9e),
                                          //   Color(0xffffad0c4),
                                          //
                                          // ]),
                                        ),
                                        child: Image.asset("Popularimage/glasswine.png",)


                                    ),
                                    Container(

                                      height: MediaQuery.sizeOf(context).height*0.04,
                                      width: MediaQuery.sizeOf(context).width*0.25,

                                      child: Text("      Wine",style: TextStyle(fontSize: 17,
                                          fontWeight: FontWeight.bold,color: Colors.white70),),
                                    ),

                                  ],
                                ),
                                SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),

                              ],
                            ),

                          ],
                        ),
                      ),
                   
                    ),
                  ],
                ),
              ),Positioned(
                  top: 335,
                  left: 20,
                  child: Row(
                    children: [
                      Text("Top Flavors",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,
                          color: Colors.black54),),
                       SizedBox(width: MediaQuery.sizeOf(context).width*0.44,),
                       TextButton(onPressed: (){}, child: Text("See all",style: TextStyle(color: Colors.black38),))
                    ],
                  )),
              Positioned(
                  top: 380,
                  child: Container(
                height: MediaQuery.sizeOf(context).height*0.22,
                    width: MediaQuery.sizeOf(context).width*1,
                    decoration: BoxDecoration(
                       
                      boxShadow: [BoxShadow(
                        color: Colors.white38,offset: Offset(-10, -10),blurRadius: 10
                      ),
                      ]
                    ),
                
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),

                          Container(
                            height: MediaQuery.sizeOf(context).height*0.2,
                            width: MediaQuery.sizeOf(context).width*0.45,
                            // color: Colors.yellowAccent,

                            child: Stack(
                                children:[
                                  Column(
                                    children: [
                                      SizedBox(height: MediaQuery.sizeOf(context).height*0.022,),
                                      Container(
                                        height: MediaQuery.sizeOf(context).height*0.16,
                                        width: MediaQuery.sizeOf(context).width*0.43,

                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                            color: Colors.red[100]),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                bottom: 10,
                                                left: 20,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Donut",style: TextStyle(fontWeight: FontWeight.bold,
                                                        fontSize: 24),),
                                                    Text("129/rs",style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ],
                                                ))
                                          ],
                                        ),

                                      ),
                                    ],
                                  ),
                                  Positioned(
                                      top: 40,
                                      left: 20,
                                      child: Icon(CupertinoIcons.heart)),
                                  // Positioned(
                                  //
                                  //     bottom: 9,
                                  //     right: 10,
                                  //     child:TextButton(onPressed: (){}, child: Icon(Icons.add,size: 40,color: Colors.white,),
                                  //       style: TextButton.styleFrom(backgroundColor: Colors.red.shade500),
                                  //     ),
                                  // ),
                                  Positioned(
                                      top: -260,
                                      left: 15,
                                      bottom: -100,


                                      child: Container(

                                          height: 100,
                                          width: 210,
                                          child: Image.asset("Popularimage/donatcake.png",))),

                                ]
                            ),
                          ),
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                          Container(
                            height: MediaQuery.sizeOf(context).height*0.2,
                            width: MediaQuery.sizeOf(context).width*0.45,
                            // color: Colors.yellowAccent,

                            child: Stack(
                                children:[
                                  Column(
                                    children: [
                                      SizedBox(height: MediaQuery.sizeOf(context).height*0.022,),
                                      Container(
                                        height: MediaQuery.sizeOf(context).height*0.16,
                                        width: MediaQuery.sizeOf(context).width*0.43,

                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                            color: Colors.orange.shade100),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                bottom: 10,
                                                left: 20,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Cream",style: TextStyle(fontWeight: FontWeight.bold,
                                                        fontSize: 24),),
                                                    Text("169/rs",style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ],
                                                ))
                                          ],
                                        ),

                                      ),
                                    ],
                                  ),
                                  Positioned(
                                      top: 40,
                                      left: 20,
                                      child: Icon(CupertinoIcons.heart)),
                                  // Positioned(
                                  //
                                  //     bottom: 9,
                                  //     right: 10,
                                  //     child:TextButton(onPressed: (){}, child: Icon(Icons.add,size: 40,color: Colors.white,),
                                  //       style: TextButton.styleFrom(backgroundColor: Colors.red.shade500),
                                  //     ),
                                  // ),
                                  Positioned(
                                      top: -300,
                                      left: 70,
                                      bottom: -100,


                                      child: Container(

                                          height: 100,
                                          width: 170,
                                          child: Image.asset("Popularimage/cake.png",))),

                                ]
                            ),
                          ),
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                          Container(
                            height: MediaQuery.sizeOf(context).height*0.2,
                            width: MediaQuery.sizeOf(context).width*0.45,
                            // color: Colors.orange,
                            child: Stack(

                                children:[
                                  Column(
                                    children: [
                                      SizedBox(height: MediaQuery.sizeOf(context).height*0.022,),
                                      Container(
                                        height: MediaQuery.sizeOf(context).height*0.16,
                                        width: MediaQuery.sizeOf(context).width*0.43,

                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                            color: Colors.grey.shade300),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                bottom: 10,
                                                left: 20,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Corn",style: TextStyle(fontWeight: FontWeight.bold,
                                                        fontSize: 24),),
                                                    Text("119/rs",style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ],
                                                ))
                                          ],
                                        ),

                                      ),
                                    ],
                                  ),
                                  Positioned(
                                      top: 40,
                                      left: 20,
                                      child: Icon(CupertinoIcons.heart)),
                                  // Positioned(
                                  //
                                  //     bottom: 9,
                                  //     right: 10,
                                  //     child:TextButton(onPressed: (){}, child: Icon(Icons.add,size: 40,color: Colors.white,),
                                  //       style: TextButton.styleFrom(backgroundColor: Colors.red.shade500),
                                  //     ),
                                  // ),
                                  Positioned(
                                      top: -160,
                                      right: -60,
                                      bottom: -100,


                                      child: Container(

                                          height: 100,
                                          width: 170,
                                          child: Image.asset("Top flavors/brown.png",))),

                                ]
                            ),
                          ),
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),


                        ],
                      ),
                    ),
              )),
              Positioned(
                  top: 570,
                  left: 20,

                  child: Text("Special Flavor's On Trend",
                    style:TextStyle(fontSize: 22,fontWeight: FontWeight.w700,
                        color: Colors.brown.shade400,
                        shadows: [ Shadow(

                        )

                        ]),
                  )),

              Padding(
                padding: const EdgeInsets.only(
                    top: 630.0,
                    left:0,right: 0),
                child: Container(
                height: MediaQuery.sizeOf(context).height*0.6,
                width: MediaQuery.sizeOf(context).width,

                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(colors: [
                     Color(0xfffff9a9e),
                  Color(0xffffad0c4),
                    ]),
                                boxShadow: [
                            BoxShadow(
                      color: Colors.pink.shade100,offset: Offset(-10, -10),blurRadius: 10)]
                  ),
                  child:  CarouselSlider(
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child:   Stack(
                          children: [
                            Positioned(
                                top: 50,

                                child: Column(
                                  children: [

                                    Text("YUM!",style: TextStyle(fontSize: 45,
                                        fontWeight: FontWeight.bold,color: Colors.purple.shade50,
                                        shadows: [
                                          Shadow(
                                              color: Colors.black38,offset: Offset(-10, -10,),blurRadius: 10
                                          )]
                                    ),),
                                    Text("YUM!",style: TextStyle(fontSize: 45,
                                        fontWeight: FontWeight.w500,color: Colors.purple.shade50,
                                        shadows: [
                                          Shadow(
                                              color: Colors.black38,offset: Offset(-10, -10,),blurRadius: 10
                                          )]
                                    ),),
                                    Text("YUM!\n",style: TextStyle(fontSize: 40,
                                        fontWeight: FontWeight.w400,color: Colors.purple.shade50,
                                        shadows: [
                                          Shadow(
                                              color: Colors.black38,offset: Offset(-10, -10,),blurRadius: 10
                                          )]
                                    ),),

                                  ],
                                )),
                            Positioned(
                                bottom: 70,
                                left: 10,
                                child: Text("A healthy breakfast\nIce made\nwith spinach,"
                                    "\ncucumber,strawberry,\nkiwi,orange or\ntangerine juice,\nkefir, and mint",
                                  style: TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.w500,color: Colors.red.shade50),)),
                            Positioned(
                                top: -70,
                                child: Image.asset("Popularimage/pinkice.png")),


                          ],
                        ),

                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child:    Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).height,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xfffff9a9e),
                              Color(0xffffad0c4),

                            ]),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: -70,
                                  left:-160,
                                  child: Image.asset("Popularimage/pinkice.png")),
                              Positioned(
                                  left: 1,

                                  child: Text("Healthy\nBreakFast\nVeg",style: TextStyle(fontSize: 50,
                                      fontWeight: FontWeight.bold,color: Colors.white,
                                      shadows: [Shadow(
                                          color: Colors.red.shade50,offset: Offset(-0, -0,),blurRadius: 10
                                      )]
                                  ),)),
                              Positioned(
                                  top: 210,

                                  child: Text("                Smoothies are thick drinks made\nfrom crushed fruit, sometimes with\n"
                                      "yogurt orice cream added.Some"
                                      "\nfruit, greens, and a liquid base",style: TextStyle(fontSize: 15,color: Colors.white),)),

                              Positioned(
                                  bottom: 60,
                                  child: Text("                Ingredients Smoothies can include a variety\n"
                                      "of ingredients, such fruit,vegetables, milk,"
                                      "\nyogurt,ice cream, non-dairy milk, crushed ice,\nwhey powder, or nutritional supplements Nutritional value"
                                      "\n\n              "
                                      "Smoothies can be packed with vitamins,"
                                      "\nminerals, and other nutrients. They can be a healthy"
                                      "\nchoice for people who are health-conscious.",
                                    style: TextStyle(color: Colors.white,),
                                  ))

                            ],
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: MediaQuery.sizeOf(context).height*1,
                      aspectRatio: 16/9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: false,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 500),
                      autoPlayCurve: Curves.linear,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (index,reason){
                        setState(() {
                          currentIndex3 = index;

                        });
                      },
                      scrollDirection: Axis.horizontal,
                    ),

                  ),

                ),
              ),

              // Positioned(
              //
              //     top: 700,
              //     left: 170,
              //     child: DotsIndicator(
              //       dotsCount: 2,position: currentIndex,
              //     ),
              // ),
              Positioned(
                  top: 1170,
                  left: 20,

                  child: Text("Special Flavor's On Trend",
                    style:TextStyle(fontSize: 22,fontWeight: FontWeight.w700,
                        color: Colors.brown.shade400,
                        shadows: [ Shadow(

                        )

                    ]),
                  )),


              Positioned(

                top: 1120,
                left: 170,
                child: DotsIndicator(
                  dotsCount: 2,position: currentIndex3,
                ),
              ),
              Positioned(

                  bottom: 340,
                  child:
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.6,
                    width: MediaQuery.sizeOf(context).width,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                        color: Colors.purpleAccent.shade100,boxShadow: [
                          BoxShadow(
                              color: Colors.purple.shade200,offset: Offset(-10, -10),blurRadius: 10)]),
                    child: CarouselSlider(
                      items: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child:   Stack(
                            children: [
                              Positioned(
                                  top: 50,
                                  child: Text(" Acai\n   Berries",style: TextStyle(fontSize: 70,
                                      fontWeight: FontWeight.bold,color: Colors.purple.shade50,
                                      shadows: [Shadow(
                                          color: Colors.black38,offset: Offset(-10, -10,),blurRadius: 10
                                      )]
                                  ),)),
                              Positioned(
                                  bottom: 70,
                                  left: 10,
                                  child: Text("A healthy breakfast\nsmoothie made\nwith spinach,"
                                      "\ncucumber,avocado,\nkiwi,orange or\ntangerine juice,\nkefir, and mint",
                                    style: TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.w500,color: Colors.red.shade50),)),
                              Positioned(
                                  top: -70,
                                  child: Image.asset("Popularimage/purpleicecream.png")),


                            ],
                          ),

                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child:    Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).height,
                            color: Colors.purpleAccent.shade100,
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 1,

                                    child: Text("Purple\nGoddess\nSmothie",style: TextStyle(fontSize: 50,
                                        fontWeight: FontWeight.bold,color: Colors.purple.shade50,
                                        shadows: [Shadow(
                                            color: Colors.purpleAccent.shade200,offset: Offset(-2, -10,),blurRadius: 10
                                        )]
                                    ),)),
                                Positioned(
                                    top: 210,

                                    child: Text("                Smoothies are thick drinks made\nfrom crushed fruit, sometimes with\n"
                                        "yogurt orice cream added.Some"
                                        "\nfruit, greens, and a liquid base",style: TextStyle(fontSize: 15,color: Colors.white),)),

                                Positioned(
                                    bottom: 60,
                                    child: Text("                Ingredients Smoothies can include a variety\n"
                                        "of ingredients, such fruit,vegetables, milk,"
                                        "\nyogurt,ice cream, non-dairy milk, crushed ice,\nwhey powder, or nutritional supplements Nutritional value"
                                        "\n\n              "
                                        "Smoothies can be packed with vitamins,"
                                        "\nminerals, and other nutrients. They can be a healthy"
                                        "\nchoice for people who are health-conscious.",
                                      style: TextStyle(color: Colors.white,),
                                    ))

                              ],
                            ),
                          ),
                        ),
                      ],
                        options: CarouselOptions(
                        height: MediaQuery.sizeOf(context).height*1,
                        aspectRatio: 16/9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: false,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 500),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        onPageChanged: (index,reason){
                          setState(() {
                            currentIndex2 = index;

                          });
                        },
                        scrollDirection: Axis.horizontal,
                      ),

                    ),
                  ),),
              Positioned(

                bottom: 350,
                left: 170,
                child: DotsIndicator(
                  dotsCount: 2,position: currentIndex2,
                ),
              ),


            ],),
        ],
      ),
    );
  }//20 850
}
// CarouselSlider(
//     items: [
//       ClipRRect(
//         borderRadius: BorderRadius.circular(40),
//         child: Stack(
//           children: [
//             Container(
//
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     Color(0xfffddd6f3),
//                     Color(0xffffaaca8),
//
//                   ]),
//               ),
//             ),
//             Positioned(
//                 bottom: 30,
//                 left: 15 ,
//                 child: Column(
//                   children: [
//                     Text("CocaCola Slightly",style: TextStyle(fontSize: 29,
//                         fontWeight: FontWeight.w500,color: Colors.white),),
//
//                     SizedBox(height: MediaQuery.sizeOf(context).height*0.022,),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 10.0,top: 0),
//                       child: Text("a carbonated soft drink\nwith a cola flavor that's\n          sweet,tangy",
//                         style: TextStyle(fontSize: 15,
//                           color: Colors.white),),
//                     ),
//
//                   ],
//                 )),
//             Positioned(
//               top: 0,
//               left: -80,
//               bottom: 100,
//               child: Image.asset("Popularimage/cocacolacan.png"),
//             ),
//
//
//           ],
//         ),
//       ),
//       ClipRRect(
//         borderRadius: BorderRadius.circular(40),
//         child: Stack(
//           children: [
//             Container(
//
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     Color(0xffff5efef),
//                     Color(0xffffeada6),
//
//
//                   ])
//
//               ),
//             ),
//
//             Positioned(
//                 bottom: 20,
//                 right: 70,
//                 child: Column(
//                   children: [
//                     Text("Strawberry\n  Juice",style: TextStyle(fontSize: 28,
//                         fontWeight: FontWeight.w700,color: Colors.white),),
//                     SizedBox(height: MediaQuery.sizeOf(context).height*0.022,),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 100.0),
//                       child: Text("contained in fruit\nand vegetables",style: TextStyle(color: Colors.white70,fontSize: 17),),
//                     )
//
//
//                   ],
//                 ),
//             ),
//             Positioned(
//               top: -190,
//               left: -120,
//               bottom: 80,
//               child: Image.asset("Popularimage/can.png",),
//             ),
//
//
//           ],
//         ),
//       ),
//
//     ],
//     options: CarouselOptions(
//       height: 400,
//       aspectRatio: 16/9,
//       viewportFraction: 0.8,
//       initialPage: 0,
//       enableInfiniteScroll: true,
//       reverse: false,
//       autoPlay: true,
//       autoPlayInterval: Duration(seconds: 3),
//       autoPlayAnimationDuration: Duration(milliseconds: 800),
//       autoPlayCurve: Curves.fastOutSlowIn,
//       enlargeCenterPage: true,
//       enlargeFactor: 0.3,
//       onPageChanged: (index,reason){
//         setState(() {
//           currentIndex = index;
//
//         });
//       },
//       scrollDirection: Axis.horizontal,
//     ),
//
// ),
