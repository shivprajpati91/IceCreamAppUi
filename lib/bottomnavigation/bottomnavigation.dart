import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:food_designe/View/Order_page/order.dart';


import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import '../View/Popular/Popular.dart';
import '../View/home/Home_Screen.dart';

import '../View/profile/profile.dart';


class bottomnavigation1 extends StatefulWidget {
  const bottomnavigation1({super.key});

  @override
  State<bottomnavigation1> createState() => _bottomnavigation1State();
}

class _bottomnavigation1State extends State<bottomnavigation1> {
  var _selectedindex=0;

  static const List<Widget> screen = [popular(),  HomeScreen () ,OrderDetail() , profile1 (),];
  // List<ScreenHiddenDrawer>  _page = [];


  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      // drawer: HiddenDrawerMenu(
      //   disableAppBarDefault: false,
      //     initPositionSelected: 0,
      //     screens: _page,
      //     slidePercent: 30,
      //     boxShadow: [],
      //
      //     backgroundColorMenu: Colors.deepPurple),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xffffffecd2),
          // color: Colors.red.shade100,
          color: Color(0xffffffcb69f),

          animationDuration: Duration(milliseconds: 200),
          items:[
            Icon(Icons.home,color: Colors.white70,),
            Icon(Icons.favorite,color: Colors.white70,),

            Icon(Icons.shopping_cart,color: Colors.white70,),
            Icon(Icons.person,color: Colors.white70,),


          ],
        index: _selectedindex,

        onTap: (index){
          setState(() {
            _selectedindex=index;
          });
        },
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                topRight: Radius.circular(30)),
            color: Colors.white),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: screen.elementAt(_selectedindex),
        ),
      ),

    );
  }
}
