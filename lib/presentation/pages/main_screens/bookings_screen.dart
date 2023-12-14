import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/mycolors.dart';
class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  bool _isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Your Transaction", style: GoogleFonts.lora(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: MyColors.primaryColor
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded, color: MyColors.primaryColor,)
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10.h,),
          DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    color: Color(0xff005E54),
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  indicatorColor: MyColors.primaryColor,
                  tabs: [
                    Tab(text: 'Upcoming', ),
                    Tab(text: 'Completed'),
                    Tab(text: 'Cancelled'),
                  ],
                ),
                Container(
                  height: 400.h,
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        scrollDirection:Axis.vertical,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                height: 245.h,
                                width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffA6A3A3), width: 1)
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50.h,
                                      width: MediaQuery.sizeOf(context).width,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 20.w),
                                            child: Row(
                                              children: [
                                                Text("Aug 24, 2024", style:GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp
                                                ),),
                                                Text("-", style:GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp
                                                ),),
                                                Text("10:00PM", style:GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp
                                                ),),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text("Remind Me", style:GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10.sp
                                              ),),
                                              Transform.scale(
                                                scale: 0.7,
                                                child: Switch(value: _isSwitched,
                                                    onChanged: (value){
                                                      setState(() {
                                                        _isSwitched=value;
                                                      });
                                                    },
                                                  activeColor: Colors.white,
                                                  inactiveThumbColor: Colors.white,
                                                  activeTrackColor: MyColors.primaryColor,
                                                  inactiveTrackColor: Colors.white,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Color(0xffA6A3A3),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Color(0xffA6A3A3),
                                    ),
                                    Container(
                                      height: 40.h,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height:24.h,
                                                    width: 113.w,
                                                    child: TextButton(
                                                      onPressed: (){},
                                                      child: Text("Cancel", style: GoogleFonts.roboto(
                                                        fontSize: 12.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.black
                                                      ),),
                                                      style: ButtonStyle(
                                                        side: MaterialStateProperty.all(BorderSide(width: 1,color: Colors.black))
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                          ),
                                          Expanded(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height:24.h,
                                                    width: 113.w,
                                                    child: TextButton(
                                                      onPressed: (){},
                                                      child: Text("View E-Receipt", style: GoogleFonts.roboto(
                                                        fontSize: 12.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.white
                                                      ),),
                                                      style: ButtonStyle(
                                                        backgroundColor: MaterialStateProperty.all(MyColors.primaryColor),
                                                        side: MaterialStateProperty.all(BorderSide(width: 1,color: MyColors.primaryColor))
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                height: 245.h,
                                width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffA6A3A3), width: 1)
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50.h,
                                      width: MediaQuery.sizeOf(context).width,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 20.w),
                                            child: Row(
                                              children: [
                                                Text("Aug 24, 2024", style:GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp
                                                ),),
                                                Text("-", style:GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp
                                                ),),
                                                Text("10:00PM", style:GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp
                                                ),),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text("Remind Me", style:GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10.sp
                                              ),),
                                              Transform.scale(
                                                scale: 0.7,
                                                child: Switch(value: _isSwitched,
                                                    onChanged: (value){
                                                      setState(() {
                                                        _isSwitched=value;
                                                      });
                                                    },
                                                  activeColor: Colors.white,
                                                  inactiveThumbColor: Colors.white,
                                                  activeTrackColor: MyColors.primaryColor,
                                                  inactiveTrackColor: Colors.white,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Color(0xffA6A3A3),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [

                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      color: Color(0xffA6A3A3),
                                    ),
                                    Container(
                                      height: 40.h,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: TextButton(
                                                onPressed: (){},
                                                child: Text("Cancel"),
                                              )
                                          ),
                                          Expanded(
                                              child: TextButton(
                                                onPressed: (){},
                                                child: Text("Cancel"),
                                              )
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
