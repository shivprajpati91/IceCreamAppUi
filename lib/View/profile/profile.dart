import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/rotues/routes_name.dart';
import '../../view_model/user_view_model.dart';
class profile1 extends StatefulWidget {
  const profile1({super.key});

  State<profile1> createState() => _profile1State();
}
class _profile1State extends State<profile1> {


    List data = ["Shiv prajapati","Student","22/03/1947", "Bhopal","+917502758424"];

    List basic = ["Name -","Status -","DOB -", "City -","Number -"];



  Widget build(BuildContext context) {

    final userPreference = Provider.of<UserViewModel>(context);
    return Column(
      children: [Stack(children: [
            Container(
              height: MediaQuery.sizeOf(context).height*0.92,
              width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffffffecd2),
                  Color(0xffffffcb69f),]))),
            Positioned(
              top: 130, left: 20,
              child: Container(
                height: MediaQuery.sizeOf(context).height*0.26,
                width: MediaQuery.sizeOf(context).width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                      topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                  color: Colors.white12,),),),
            Positioned(
              top: 150, left: 210,
                child: IconButton(onPressed: (){}, icon: Icon(Icons.add,size: 50,))),
            Positioned(
                top: 60, left: 127,
                child: Container(
                height: MediaQuery.sizeOf(context).height*0.15,
                width: MediaQuery.sizeOf(context).width*0.35,
                   decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white38,),
                  child: Icon(Icons.person,size: 70,),),),
            Positioned(
              top: 35, right: 9,
                child: TextButton(onPressed: (){

                  userPreference.remove().then((value) {
                    Navigator.pushNamed(context,  RoutesName.login);
                  });

                }, child: Row(children: [
                 Text("Log out ",style: TextStyle(color: Colors.black),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                Icon(Icons.logout,color: Colors.black,),],))),
            Positioned(
                top: 230, left: 115,
                child: Column(
                children: [Text("Shiv prajapati",style: TextStyle(fontSize: 28,
                    color: Colors.black,fontWeight: FontWeight.w500),),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.00,),
                Row(
                  children: [TextButton(onPressed: (){}, child:IconButton(onPressed: (){}, icon: Row(children: [
                     Icon(Icons.edit,color: Colors.black,),
                     SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                     Text("Edit profile",style: TextStyle(fontWeight: FontWeight.w300,),)],)),style: TextButton.styleFrom(),
                    ),],),],)),
            Positioned(
                top: 370, left: 20,
                child: Container(
              height: MediaQuery.sizeOf(context).height*0.46,
              width: MediaQuery.sizeOf(context).width*0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),),  color: Colors.white10,),
                  child:
                  ListView.builder(
                    itemBuilder: (BuildContext ctx, int index) {
                      return Column(children: [SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 20),
                            child: Container(
                              height: MediaQuery.sizeOf(context).height*0.06,
                              width: MediaQuery.sizeOf(context).width,
                              decoration: BoxDecoration(color: Colors.black12,
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                                      topLeft: Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0.0,left: 10),
                                child: ListTile(trailing:  Text(data[index],style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w500,color: Colors.white),),
                                  title: Text(basic[index],style: TextStyle(fontSize: 20,
                                      fontWeight:FontWeight.w500,color: Colors.white ),

                                  ),)),),),],);}, itemCount: data.length,
                  ),
            ))
          ],)],);}}
