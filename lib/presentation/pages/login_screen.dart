import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:velocity_x/velocity_x.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(34.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/main_logo.png'),
                  SizedBox(height: 50.h,),
                  Text("Welcome Back, \nSign in into your account",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 22.sp
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.w),
                    child: Row(
                      children: [
                        Text("don't have account?", style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),),
                        Text("Signup", style: TextStyle(
                          fontSize: 14.sp,
                          color: MyColors.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 50.h,),
                  VxTextField(
                    height: 38.h,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: 'Email',
                    fillColor: Color(0xffD9D9D9),
                    cursorColor: MyColors.primaryColor,
                    contentPaddingLeft: 10,
                  ),
                  SizedBox(height: 30.h,),
                  VxTextField(
                    height: 38.h,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: 'Password',
                    fillColor: Color(0xffD9D9D9),
                    cursorColor: MyColors.primaryColor,
                    contentPaddingLeft: 10,
                  ),
                  SizedBox(height: 5.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?", style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline
                      ),)
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  TextButton(onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(MyColors.primaryColor),
                      minimumSize: MaterialStateProperty.all(Size(321.w, 38.h)),
                    ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: Colors.white,
                        ),
                      ),
                  ),
                  SizedBox(height: 50.h,),
                  Row(
                    children: [
                      Container(
                        height: 2,
                        color: Colors.black, 
                      )

                    ],
                  )
                ],
              )
            ),
          ],
        ),
      )
    );
  }
}
