import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 100.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 20.w,),
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
                Row(
                  children: [
                    Container(
                      height: 44.h,
                      width: 44.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF0F9FF)
                      ),
                      child: Icon(Icons.call, color: MyColors.primaryColor,),
                    ),
                    SizedBox(width: 20.w,)
                  ],
                ),
              ],
            ),
          ),
          ListView(
            scrollDirection: Axis.vertical,
            children: [

            ],
          ),
          Container(
            height: 100.h,
            
          )
        ],
      ),
    );
  }
}
