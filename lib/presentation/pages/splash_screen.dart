import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_haven/presentation/pages/authentication-screens/login_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import 'authentication-screens/welcome_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return WelcomeScreen();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child:Container(
            height: 32.h,
            width: 130.w,
            child: Image.asset(
              'assets/main_logo.png',
              fit: BoxFit.contain,
            ),
          )
      ),
    );
  }
}
