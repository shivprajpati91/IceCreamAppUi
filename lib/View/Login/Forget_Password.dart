import 'package:flutter/material.dart';


import '../../bottomnavigation/bottomnavigation.dart';

import 'Login_Screen.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}
class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.pink,

        child: Stack(
          children: [
            Positioned(
                top: -180,
                child: Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.pink.shade100,
                  child: Image.asset("image/icecream3.jpg"),
                )),
            Positioned(
                left: 20,
                top: 170,
                child: Text("Don't Worry\n  Forget Now!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,
                    color: Colors.white),)),
            Positioned(
              bottom: 1,
              child: Container(
                height: MediaQuery.sizeOf(context).height*0.5,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(75),topLeft: Radius.circular(75)),
                    color: Colors.red.shade50,
                    boxShadow: [BoxShadow(
                        color: Colors.black12,offset: Offset(-10, -10,),blurRadius: 20
                    )]),
              ),
            ),
            Positioned(
                left: 20,
                bottom: 1,
                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.50,
                  width: MediaQuery.sizeOf(context).width*0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Email",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500,
                              color: Colors.black38),),

                          SizedBox(width: MediaQuery.sizeOf(context).width*0.37,),

                          IconButton(onPressed: (){

                          }, icon: Icon(Icons.arrow_circle_right,
                            size: 90,color: Colors.red.shade200,),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.12,),

                      TextFormField(decoration: InputDecoration(labelText: "  Enter Email",
                        prefixIcon: Icon(Icons.mail,color: Colors.pink.shade500,size: 24,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),),
                        keyboardType: TextInputType.name,),

                      SizedBox(height: MediaQuery.sizeOf(context).height*0.13,),
                      Row(
                        children: [
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.20),
                          Text("Don't have an account?"),
                          TextButton(onPressed: (){

                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                          }, child: Text("Login",style: TextStyle(color: Colors.black87),))
                        ],
                      )],
                  ),
                )),
          ],),),
    );
  }
}
