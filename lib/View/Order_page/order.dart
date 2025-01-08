import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

import '../home/Home_Screen.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}
class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Stack(
            children: [
              Container(height:MediaQuery.sizeOf(context).height*0.92,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffffffecd2),
                      Color(0xffffffcb69f),

                    ])
                ),
              ),


              Positioned(
                top: 50,
                right: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Icon(Icons.person,size: 30,color: Colors.white,),),),

              Positioned(
                  top: 50,
                  left: 15,

                  child: Row(
                    children: [
                      InkWell(child: Icon(CupertinoIcons.arrow_left,size: 30,),
                      onTap: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                      ),

                      SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),

                      Text("Healthy",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w400,
                        color: Colors.white,),),

                    ],
                  )),
              Positioned(
                top: 210,
                  left: 30,
                  child: Text("Ingredient",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                  )),
              Positioned(
                  top: 80,
                  left: 30,
                  child: Text("Take Your\nHealthy IceCream",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.red[200]),)),
              Positioned(
                top: 240,
                  left: 12,
                  child: Row(
                children: [
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                  ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=>HomeScreen()));
                  }, child: Text("Berry",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade200),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                  ElevatedButton(onPressed: (){}, child: Text("Choclate",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade200),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                  ElevatedButton(onPressed: (){}, child: Text("Fruit",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade200,),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),

                ],
              )),

              Positioned(
                top: 380,
                  left: 20,
                  child: Column(
                children: [
                  Text("Size",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                  Text("Small",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.redAccent.shade100),),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Text("Delivery Charge",style: TextStyle(fontWeight: FontWeight.w500),),
                  Text("259Rs",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.redAccent.shade100),),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Text("Deliver in",style: TextStyle(fontWeight: FontWeight.w500),),
                  Text("20min",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                      color: Colors.redAccent.shade100),),

                ],
              )),
              Positioned(
                  bottom: 120,
                  left: 50,
                  child: Text("A frozen dessert made from dairy products,\n              a sweetener, and flavorings",
                  style: TextStyle(color: Colors.black54),
                  )
              ),
              Positioned(
                bottom: -20,
                right: -190,
                height: 900,
                child: Container(
                    height: MediaQuery.sizeOf(context).height*0.4,
                    child: Image.asset("image/icecream.png",)),
              ),
              Positioned(
                  bottom: 20,
                  left: 60,
                  child:  SliderButton(
                    backgroundColor: Colors.redAccent.shade100,

                          action: (

                              ) async{

                             return false; //true krna h

                             },
                              label: Text("Slide to place order",
                       style: TextStyle(
                           color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 17),),
                                   icon: Text("P",style: TextStyle(color: Colors.redAccent.shade200,
                                     fontWeight: FontWeight.w600,fontSize: 44,),),
              ),)

            ],
          )
        ],

    );

  }
}
