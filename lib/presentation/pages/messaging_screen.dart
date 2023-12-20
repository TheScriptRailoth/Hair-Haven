import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/widgets/send_msg_widget.dart';
class MessagingScreen extends StatefulWidget {
  final String profileImg;
  final String userName;
  final String companyName;
  final Color profileBg;
  const MessagingScreen({Key?key, required this.userName, required this.companyName, required this.profileImg, required this.profileBg}):super(key: key);

  @override
  State<MessagingScreen> createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
  bool _isAddPopupVisible = false;

  void _toggleAddPopup() {
    setState(() {
      _isAddPopupVisible = !_isAddPopupVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 70.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 43.w,
                              height: 41.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:widget.profileBg,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.r),
                                child: Image.asset(widget.profileImg, fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(width: 10.w,),
                            Container(
                              height: 70.h,
                              width: MediaQuery.sizeOf(context).width/2-20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(widget.userName, style: GoogleFonts.roboto(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black
                                  ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 5.h,),
                                  Text(widget.companyName, style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: Color(0xffA3A3A3),
                                  ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: (){},
                          highlightColor: MyColors.primaryColor,
                          splashColor: MyColors.primaryColor,
                          child: Container(
                            height: 44.h,
                            width: 44.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffF0F9FF)
                            ),
                            child: Icon(Icons.call, color: MyColors.primaryColor,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: ListView(
                        children: [
                          SizedBox(height: 50.h,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: Container(
                                  height: 44.h,
                                  width: 106.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFEA051),
                                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(15.r), topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r))
                                  ),
                                  child: Center(
                                    child: Text("Hey mate!",style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: Container(
                                  height: 44.h,
                                  width: 170.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFEA051),
                                      borderRadius: BorderRadius.only(bottomRight:Radius.circular(15.r), topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r))
                                  ),
                                  child: Center(
                                    child: Text("Come to barber now",style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('12:31 PM', style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Color(0xffBDBDBD),
                              ),)
                            ],
                          ),

                          SizedBox(height: 10.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: Container(
                                  height: 44.h,
                                  width: 185.w,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(15.r), topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r))
                                  ),
                                  child: Center(
                                    child: Text("Alright bro wait for sec.",style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: Container(
                                  height: 44.h,
                                  width: 250.w,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(15.r), topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r))
                                  ),
                                  child: Center(
                                    child: Text("Not so sure about my hair style 😂",style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('12:33 PM', style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Color(0xffBDBDBD),
                              ),)
                            ],
                          ),

                          SizedBox(height: 10.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: Container(
                                  height: 44.h,
                                  width: 129.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFEA051),
                                      borderRadius: BorderRadius.only(bottomRight:Radius.circular(15.r), topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r))
                                  ),
                                  child: Center(
                                    child: Text("Lemme see it!",style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: Container(
                                  height: 44.h,
                                  width: 155.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFEA051),
                                      borderRadius: BorderRadius.only(bottomRight:Radius.circular(15.r), topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r))
                                  ),
                                  child: Center(
                                    child: Text("Send me your hair",style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('12:34 PM', style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Color(0xffBDBDBD),
                              ),)
                            ],
                          ),

                          SizedBox(height: 10.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: Container(
                                  height: 44.h,
                                  width: 82.w,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(15.r), topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r))
                                  ),
                                  child: Center(
                                    child: Text("Got it!",style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('12:33 PM', style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Color(0xffBDBDBD),
                              ),)
                            ],
                          ),
                        ],
                      )
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 70.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap:(){
                            _toggleAddPopup();
                          },
                          child: Container(
                            height: 43.h,
                            width: 51.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.r),
                              color: MyColors.primaryColor,
                              shape: BoxShape.rectangle
                            ),
                            child: Icon(Icons.add, color: Colors.white, size: 30,),
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Expanded(
                          child: Container(
                            height: 45.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Color(0xffA3A3A3), width: 1),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Type a message', // Placeholder text
                                        border: InputBorder.none, // Remove the default border
                                      ),
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Color(0xffA3A3A3)
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(onPressed: (){},
                                    icon: Icon(Icons.send_rounded, color: MyColors.primaryColor,))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  _isAddPopupVisible=false;
                });
              },
              child: Visibility(
                visible: _isAddPopupVisible,
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Container(
                            height: 100.h, // Adjust the height as needed
                            width: 45.w, // Adjust the width as needed
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(onPressed: (){},
                                    icon: Icon(CupertinoIcons.mic, color: MyColors.primaryColor,size: 20,)),
                                IconButton(onPressed: (){},
                                    icon: Icon(CupertinoIcons.photo, color: MyColors.primaryColor, size: 20,)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: GestureDetector(
                            onTap:(){
                              _toggleAddPopup();
                            },
                            child: Container(
                              height: 43.h,
                              width: 51.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22.r),
                                  color: MyColors.primaryColor,
                                  shape: BoxShape.rectangle
                              ),
                              child: Icon(Icons.add, color: Colors.white, size: 30,),
                            ),
                          ),
                        ),
                        SizedBox(height: 14.h,)

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
