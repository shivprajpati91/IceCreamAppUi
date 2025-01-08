import 'package:flutter/material.dart';
class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}
class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
            top: 55,
              left: 40,

              child: Image.asset("image/cocacola.png")),


            Positioned(
            top: 50,
            right: 30,
            child: CircleAvatar(
              backgroundColor: Colors.black12,
              child: Icon(Icons.person,size: 30,color: Colors.white,),),),
            Positioned(
            top: 60,
            left: 20,
            child: Icon(Icons.arrow_back,size: 25,color: Colors.black,),),

              Positioned(
              top: 50,
              left: 60,
              child: Text("Healthy",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                color: Colors.white,),)),
                Positioned(
                bottom: 1,
                child: Container(
                height: MediaQuery.sizeOf(context).height*0.35,
                width: MediaQuery.sizeOf(context).width,

                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(90),
                    topRight: Radius.circular(90)),
                  color: Colors.white70,),
               )),
               Positioned(
               bottom: 160,
                 left: 40,
               child: Text("Drink duo\nEnjoyment extra",style: TextStyle(fontSize: 40,
                  fontWeight: FontWeight.w500),)),
               Positioned(
               bottom: 120,
               left: 40,
               child: Text("250 ml",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,
                  color: Colors.black38),)),
              Positioned(
              bottom: 70,
              left: 40,
              child: Text("Price - 149 Rs",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),)),
              Positioned(
              bottom: 10,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(

                    width: MediaQuery.sizeOf(context).width*0.9,

                    child: ElevatedButton(onPressed: (){}, child: Text("Order now",style: TextStyle(fontSize: 18,color: Colors.black),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
              )),
          
              Positioned(
              top: 120,
              left: 15,
              child: Row(
              children: [
              Container(
               height: MediaQuery.sizeOf(context).height*0.03,
               width: MediaQuery.sizeOf(context).width*0.25,
               child: Center(child: Text("Receive cold",style: TextStyle(fontSize: 10,color: Colors.black),)),
               decoration: BoxDecoration(borderRadius:BorderRadius.circular(50),color: Colors.white38 ),
              ),

               SizedBox(width: MediaQuery.sizeOf(context).width*0.03),


               Container(
                height: MediaQuery.sizeOf(context).height*0.03,
                width: MediaQuery.sizeOf(context).width*0.25,
                child: Center(child: Text("Receive cold",style: TextStyle(fontSize: 10,color: Colors.black),)),
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(50),color: Colors.white38 ),
              ),

              ],))
          
             ],
      ),
    );
  }
}
