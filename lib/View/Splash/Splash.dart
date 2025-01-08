
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../view_model/services/splash_services.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  SplashServices splashServices = SplashServices();
  void initState(){

    super.initState();
    splashServices.checkAuthenctication(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Music Note Icon with Animation
            Icon(
              Icons.icecream_rounded,
              size: 100,
              color: Colors.black,
            )
                .animate()
                .scale(
              begin: Offset(0.8, 0.8),
              end: Offset(1.2, 1.2),
              duration: Duration(seconds: 2),
            )
                .then()
                .scale(begin: Offset(1.2, 1.2), end: Offset(1.0, 1.0)),

            SizedBox(height: 20),

            // Animated Text for App Name
            Text(
              "Healthy",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            )
                .animate()
                .fadeIn(duration: Duration(seconds: 1))
                .then()
                .tint(color: Colors.black54)
                .then()
                .shimmer(duration: Duration(seconds: 1), color: Colors.white),
          ],
        ),
      ),
    );
  }
}
