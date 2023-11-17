import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/theme/mycolors.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                  padding: EdgeInsets.all(30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/main_logo.png'),
                      SizedBox(height: 20.h,),
                      Text("Sign up to your account",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22.sp
                        ),
                      ),
                      SizedBox(height: 30.h,),
                      VxTextField(
                        height: 48.h,
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        labelText: 'First Name',
                        fillColor: Color(0xffD9D9D9),
                        cursorColor: MyColors.primaryColor,
                        borderRadius: 10,
                        borderType: VxTextFieldBorderType.roundLine,
                      ),
                      SizedBox(height: 20.h,),
                      VxTextField(
                        height: 48.h,
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        labelText: 'Email',
                        fillColor: Color(0xffD9D9D9),
                        cursorColor: MyColors.primaryColor,
                        borderRadius: 10,
                        borderType: VxTextFieldBorderType.roundLine,
                      ),
                      SizedBox(height: 20.h,),
                      VxTextField(
                        height: 48.h,
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        labelText: 'Password',
                        fillColor: Color(0xffD9D9D9),
                        cursorColor: MyColors.primaryColor,
                        isPassword: true,
                        obscureText: true,
                        borderRadius: 10,
                        borderType: VxTextFieldBorderType.roundLine,
                      ),
                      SizedBox(height: 20.h,),
                      VxTextField(
                        height: 48.h,
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        labelText: 'Confirm Password',
                        fillColor: Color(0xffD9D9D9),
                        cursorColor: MyColors.primaryColor,
                        isPassword: true,
                        obscureText: true,
                        borderRadius: 10,
                        borderType: VxTextFieldBorderType.roundLine,
                      ),
                      SizedBox(height: 35.h,),
                      TextButton(onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(MyColors.primaryColor),
                          minimumSize: MaterialStateProperty.all(Size(321.w, 38.h)),
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 50.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 80.h,
                            height: 2,
                            color: Colors.black,
                          ),
                          Text("OR", style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600
                          ),),
                          Container(
                            width: 80.h,
                            height: 2,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(height: 50.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sign in with", style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400
                          ),)
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 65.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/apple-logo.png',
                              width: 27.w,
                              height: 27.h,
                            ),
                            Image.asset(
                              'assets/google.png',
                              width: 27.w,
                              height: 27.h,
                            ),
                            Image.asset(
                              'assets/facebook.png',
                              width: 27.w,
                              height: 27.h,
                            ),

                          ],
                        ),
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
