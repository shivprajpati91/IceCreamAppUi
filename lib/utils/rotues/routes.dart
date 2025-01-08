

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_designe/View/Login/Forget_Password.dart';
import 'package:food_designe/View/Order_page/order.dart';
import 'package:food_designe/utils/rotues/routes_name.dart';

import '../../View/Login/Login_Screen.dart';
import '../../View/Login/SignUp_Screen.dart';
import '../../View/Splash/Splash.dart';

import '../../View/home/Home_Screen.dart';
import '../../bottomnavigation/bottomnavigation.dart';



class Routes {

    static Route<dynamic>  generateRoutes(RouteSettings settings){


      switch(settings.name){
        case  RoutesName.splash:

          return MaterialPageRoute(builder: (BuildContext context )=> SplashScreen()) ;

        case  RoutesName.home:

          return MaterialPageRoute(builder: (BuildContext context )=> HomeScreen()) ;

        case  RoutesName.btnav:

          return MaterialPageRoute(builder: (BuildContext context )=> bottomnavigation1()) ;

        case  RoutesName.orederscreen:

          return MaterialPageRoute(builder: (BuildContext context )=> OrderDetail()) ;


        case  RoutesName.forget:

          return MaterialPageRoute(builder: (BuildContext context )=> ForgetPassword()) ;

        case  RoutesName.login:

          return MaterialPageRoute(builder: (BuildContext context )=> LoginScreen()) ;

        case  RoutesName.signUp:

          return MaterialPageRoute(builder: (BuildContext context )=> SignupScreen()) ;
        default:
          return MaterialPageRoute(builder: (_){
             return Scaffold(
               body: Center(child: Text("No Route Defined"),),
             );
          });
      }
    }
}