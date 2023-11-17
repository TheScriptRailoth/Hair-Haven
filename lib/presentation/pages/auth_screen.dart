import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final List<String> Images=[
    'assets/images/splash1.png',
    'assets/images/splash2.png',
    'assets/images/splash3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 66.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 94.w,
                  height: 30.h,
                  child: Image.asset('assets/main_logo.png'),
                ),
              ],
            ),
          ),
          // PageView.builder(
          // itemCount: 3,
          //     itemBuilder: (context, index){
          //       return Container(
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //             image: AssetImage(Images[index]),
          //             fit: BoxFit.cover,
          //           )
          //         ),
          //         child: Center(
          //           child: Text(
          //             'Image ${index+1}',
          //           ),
          //         ),
          //       );
          //    }
          // )
        ],
      ),
    );
  }
}
