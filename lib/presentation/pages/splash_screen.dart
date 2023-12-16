import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_haven/presentation/pages/authentication-screens/login_screen.dart';

import 'authentication-screens/welcome_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return WelcomeScreen();
              }));
            },
            child: Image.asset(
              'assets/main_logo.png',
              width: 130.w,
              height: 31.h,
            ),
          ),
      ),
    );
  }
}
