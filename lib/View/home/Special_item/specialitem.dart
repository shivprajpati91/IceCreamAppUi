import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../bottomnavigation/bottomnavigation.dart';


class specialitem extends StatefulWidget {
  const specialitem({super.key});

  @override
  State<specialitem> createState() => _specialitemState();
}
class _specialitemState extends State<specialitem> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
                      InkWell(
                        child: Icon(CupertinoIcons.arrow_left,size: 30,),onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>bottomnavigation1()));
                      },),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                      Text("Special item's",style: TextStyle(fontSize: 28,
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
                            Positioned(child: Image.asset("image/whitechoclateicecream.png")),
                            Positioned(
                              top: 10,
                                left: 90,
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("White & Browny",style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),),
                                Text("359Rs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                Text("Satisfy your mind & calmness enjoy\nwith special person.",style: TextStyle(fontSize: 13),)
                              ],
                            )),
                          ],
                        ),

                                  ),
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                      Container(
                        height: MediaQuery.sizeOf(context).height*0.15
                        ,
                        width: MediaQuery.sizeOf(context).width*0.95,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white12,boxShadow: [BoxShadow(
                            color: Colors.black12,offset: Offset(-10, -10),blurRadius: 10
                        )]
                        ),
                        child: Stack(
                          children: [
                            Positioned(child: Image.asset("image/browncoffe.png")),
                            Positioned(
                                top: 10,
                                left: 90,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Wine flavor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text("359Rs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                    Text("Regular coffee flavor and high caffeine\ncontent.",style: TextStyle(fontSize: 13),)
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],),),
            ],
          )
        ],),
      )
    );
  }
}
