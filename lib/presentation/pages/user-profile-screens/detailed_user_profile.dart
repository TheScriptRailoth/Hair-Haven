import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
class DetailedUserProfile extends StatefulWidget {

  final String name;
  final String followers;
  final String following;
  DetailedUserProfile({Key? key, required this.name, required this.followers, required this.following}) : super(key: key);

  @override
  State<DetailedUserProfile> createState() => _DetailedUserProfileState();
}

class _DetailedUserProfileState extends State<DetailedUserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(widget.followers, style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),),
                        Text("Followers", style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff878D98)
                        ),)
                      ],
                    ),
                    SizedBox(width: 20.w,),
                    Container(
                      height: 80.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(width: 4, color: MyColors.primaryColor)
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: -10,
                            right: -10,
                            child: Container(
                              height: 23.h,
                              width: 23.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: MyColors.primaryColor
                              ),
                              child: Center(child: Icon(Icons.add, size: 26, color: Colors.white,)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
