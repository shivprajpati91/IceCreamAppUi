import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_designe/bottomnavigation/bottomnavigation.dart';
class regularitem extends StatefulWidget {
  const regularitem({super.key});

  @override
  State<regularitem> createState() => _regularitemState();
}

class _regularitemState extends State<regularitem> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xffffffecd2),
                          Color(0xffffffcb69f),

                        ])
                    ),
                  ),
                  Positioned(
                      top: 110,
                      left: 20,
                      child: Container(
                          height: MediaQuery.sizeOf(context).height*0.06,
                          width: MediaQuery.sizeOf(context).width*0.9,

                          child: SearchBar(leading: Icon(Icons.search),hintText: "Wine flavor",))),
                  Positioned(
                      top: 60,
                      left: 20,
                      child: Row(
                        children: [
                          InkWell(child: Icon(CupertinoIcons.arrow_left,size: 30,),
                            onTap: (){
                            Navigator.pushReplacement(context,MaterialPageRoute(
                                builder: (context)=>bottomnavigation1()));

                          },),
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                          Text("Regular item's",style: TextStyle(fontSize: 28,
                              fontWeight: FontWeight.w500,color: Colors.black87),),
                        ],
                      )),

                  Positioned(
                    top: 220,
                    left: 10,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).height*0.15,
                          width: MediaQuery.sizeOf(context).width*0.95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white12,boxShadow: [BoxShadow(
                              color: Colors.black12,offset: Offset(-10, -10),blurRadius: 10
                          )]
                          ),
                          child: Stack(
                            children: [
                              Positioned(child: Image.asset("image/icecream.png")),
                              Positioned(
                                  top: 10,
                                  left: 90,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Strawberry & cherry ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Text("259Rs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                      Text("A strong bold.flavor\nand high Quality content.",style: TextStyle(fontSize: 13),)
                                    ],
                                  )),
                            ],
                          ),

                        ),
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                        Container(
                          height: MediaQuery.sizeOf(context).height*0.15,
                          width: MediaQuery.sizeOf(context).width*0.95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white12,boxShadow: [BoxShadow(
                              color: Colors.black12,offset: Offset(-10, -10),blurRadius: 10
                          )]
                          ),
                          child: Stack(
                            children: [
                              Positioned(child: Image.asset("image/greenicecream.png")),
                              Positioned(
                                  top: 10,
                                  left: 90,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("pistachio,mint",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Text("259Rs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                      Text("Pistachio is made with\nalmond paste and green food dye",style: TextStyle(fontSize: 13),)
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                        Container(
                          height: MediaQuery.sizeOf(context).height*0.13,
                          width: MediaQuery.sizeOf(context).width*0.95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white12,boxShadow: [BoxShadow(
                              color: Colors.black12,offset: Offset(-10, -10),blurRadius: 10
                          )]
                          ),
                          child: Stack(
                            children: [
                              Positioned(child: Image.asset("image/bugicecream.png")),
                              Positioned(
                                  top: 10,
                                  left: 130,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Wine flavor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Text("259Rs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                      Text("Regular coffee flavor\nand high caffeine content.",style: TextStyle(fontSize: 13),)
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),),

                ],
              )
            ],),
        )
    );
  }
}
