import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/rotues/routes_name.dart';
import '../../view_model/user_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height*1.5,
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
                    left: 20,
                    child: Text("Healthy",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w400,
                      color: Colors.white,),)),

                Positioned(
                    top: 90,
                    left: 25,
                    child: Container(
                      height: MediaQuery.sizeOf(context).height*0.08,
                      width: MediaQuery.sizeOf(context).width,


                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).height*0.03,
                            child: ElevatedButton(onPressed: (){

                            }, child: Text("Contact",style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,elevation: 30,),),

                          ),SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                          Container(
                            height: MediaQuery.sizeOf(context).height*0.03,
                            child: ElevatedButton(onPressed: (){


                            }, child: Text("Regular",style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,elevation: 30),
                            ),
                          ),
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                          Container(
                            height: MediaQuery.sizeOf(context).height*0.03,
                            child: ElevatedButton(onPressed: (){

                            }, child: Text("Special",style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,elevation: 30),),
                          ),
                        ],
                      ),

                    )),
                Positioned(
                    top: 200,
                    left: 20,
                    child: Row(
                      children: [
                        Text("Best choice",style: TextStyle(fontSize: 30,color: Colors.white,
                            fontWeight: FontWeight.w500),),
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.37,),
                        TextButton(onPressed: (){

                        }, child: Text("See all",style: TextStyle(color: Colors.black45),))

                      ],)),

                Padding(
                  padding: const EdgeInsets.only(top: 400.0),
                  child: Positioned(

                    child: Row(
                      children: [
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.05,),
                        InkWell(
                          child: Hero(


                            tag: 'second',
                            child: Container(
                              height: MediaQuery.sizeOf(context).height*0.25,
                              width: MediaQuery.sizeOf(context).width*0.45,

                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.black12,),
                              child: Column(
                                children: [
                                  SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                                  Text("Strawberry & cherry ",style: TextStyle(fontSize: 18,
                                      fontWeight: FontWeight.bold,color: Colors.white),),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25.0),
                                    child: Text("A strong bold.flavor\nand high Quality\ncontent.",
                                      style: TextStyle(color: Colors.white70),),
                                  ),
                                  SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),

                                  Padding(
                                    padding: const EdgeInsets.only(right: 50.0,top: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right:0.0,top: 8),
                                      child: Text("259Rs",style: TextStyle(color: Colors.white,
                                          fontWeight: FontWeight.w500,fontSize: 30),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: (){
                            // Navigator.pushReplacement(context,
                            //     MaterialPageRoute(builder: (context)=>order1()));

                          },
                        ),
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                        InkWell(
                          child: Container(
                            height: MediaQuery.sizeOf(context).height*0.25,
                            width: MediaQuery.sizeOf(context).width*0.45,

                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.black12,),
                            child: Column(
                              children: [
                                SizedBox(height: MediaQuery.sizeOf(context).height*0.05,)
                                ,                        Text("pistachio,mint",style: TextStyle(fontSize: 23,
                                    fontWeight: FontWeight.bold,color: Colors.white),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Pistachio is made with\nalmond paste and green food dye",
                                    style: TextStyle(color: Colors.white70),),
                                ),
                                SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),

                                Padding(
                                  padding: const EdgeInsets.only(right: 50.0,top: 10),
                                  child: Text("259Rs",style: TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.w500,fontSize: 30),),
                                )
                              ],
                            ),
                          ),
                          onTap: (){
                            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>order1()));

                          },
                        ),
                      ],),
                  ),
                ),
                Positioned(
                    top: 578,
                    right: 10,

                    child: Container(
                      child: InkWell(
                        child: CircleAvatar(child: Icon(Icons.arrow_circle_right_outlined,
                          color: Colors.white70,size: 42,),backgroundColor: Colors.black12,),
                        onTap: (){
                        },
                      ),
                    )),
                Positioned(
                    top: 578,
                    right: 195,


                    child: Container(
                      child: InkWell(
                        child: CircleAvatar(child: Icon(Icons.arrow_circle_right_outlined,
                          color: Colors.white70,size: 42,),backgroundColor: Colors.black12,),
                        onTap: (){
                        },

                      ),
                    )),
                Positioned(
                  top: 130,
                  right: 155,
                  child: InkWell(
                    child: Container(
                        height: MediaQuery.sizeOf(context).height*0.4,

                        child: Image.asset("image/icecream.png",)),
                    onTap: (){


                    },
                  ),

                ),
                Positioned(
                  top: 255,
                  left: 225,
                  child: InkWell(
                    child: Container(

                      height: MediaQuery.sizeOf(context).height*0.25,

                      child: Image.asset("image/greenicecream.png",),),
                    onTap: (){

                    },
                  ),),
                Positioned(
                    top: 630,
                    left: 20,
                    child: Row(
                      children: [
                        Text("Special flavor",style: TextStyle(fontSize: 30,color: Colors.white,
                            fontWeight: FontWeight.w500),),
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.31,),
                        TextButton(onPressed: (){

                        }, child: Text("See all",style: TextStyle(color: Colors.black45),))

                      ],)),
                Positioned(
                  top: 680,
                  left: 20,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height*0.2,
                    width: MediaQuery.sizeOf(context).width*0.9,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                      color: Colors.black12,),
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Text("White & Browny",style: TextStyle(fontSize: 28,
                              color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        Padding(
                          padding: const EdgeInsets.only(left: 90.0),
                          child: Text("Satisfy your mind & calmness\nenjoy with special person.",
                            style: TextStyle(color: Colors.white70,),),
                        ),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Text("Price 369Rs",style: TextStyle(color: Colors.white70,fontSize: 24,
                              fontWeight: FontWeight.w600),),
                        )
                      ],
                    ),
                  ),),

                Positioned(
                    top: 670,
                    right: 235,
                    child: Container(
                        height: MediaQuery.sizeOf(context).height*0.22,
                        child: Image.asset("image/whitechoclateicecream.png",))),
                Positioned(
                    top: 1180,
                    right: 10,

                    child: Container(
                      child: CircleAvatar(child: Icon(Icons.arrow_circle_right_outlined,
                        color: Colors.white70,size: 42,),backgroundColor: Colors.black12,),
                    )),
                Positioned(
                  top: 1000,
                  left: 10,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height*0.25,
                    width: MediaQuery.sizeOf(context).width*0.45,

                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black12,),
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                        Text("Strong Nescafe",style: TextStyle(fontSize: 23,
                            fontWeight: FontWeight.bold,color: Colors.white),),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("A strong bold.flavor\nand high caffeine\ncontent.",
                            style: TextStyle(color: Colors.white70),),
                        ),
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),

                        Padding(
                          padding: const EdgeInsets.only(right: 50.0,top: 10),
                          child: Text("139Rs",style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w500,fontSize: 30),),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 910,
                    left: 220,
                    child: Container(
                        height: MediaQuery.sizeOf(context).height*0.15,
                        child: Image.asset("image/bugicecream.png",))),
                Positioned(
                  top: 1180,
                  left: 150,

                  child: Container(
                    child: CircleAvatar(child: Icon(Icons.arrow_circle_right_outlined,
                      color: Colors.white70,size: 42,),backgroundColor: Colors.black12,),
                  ),
                ),
                Positioned(
                  top: 1000,
                  right: 10,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height*0.25,
                    width: MediaQuery.sizeOf(context).width*0.45,

                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black12,),
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                        Text("Wine flavor",style: TextStyle(fontSize: 23,
                            fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("Regular coffee flavor\nand high caffeine\ncontent.",
                          style: TextStyle(color: Colors.white70),),

                        SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),

                        Padding(
                          padding: const EdgeInsets.only(right: 50.0,top: 10),
                          child: Text("159Rs",style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w500,fontSize: 30),),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 800,
                  right: 200,
                  child: Container(
                      height: MediaQuery.sizeOf(context).height*0.32,
                      child: Image.asset("image/browncoffe.png",)
                  ),),
              ],
            ),),
        ],
      ),
    );

  }
}
