import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Profile", style: GoogleFonts.lora(
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 68.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: MyColors.primaryColor,
                  borderRadius: BorderRadius.circular(8.r)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 20.w,),
                    Container(
                      width: 43.w,
                      height: 43.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/profile_pic.png'),
                    ),
                    SizedBox(width: 20.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Swagatika Pradhan", style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp
                        ), ),
                        SizedBox(height: 3.h,),
                        Text("16.8 k Followers | 99 Following", style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp
                        ), ),

                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h,),
              Container(
                height: 50.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1
                    )
                  )
                ),
                child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.person, size: 24, color: MyColors.primaryColor,),
                            SizedBox(width: 20.w,),
                            Text("Your Profile", style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron, size: 24, color: MyColors.primaryColor,)
                      ],
                    ),
                ),
              ),
              Container(
                height: 50.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1
                    )
                  )
                ),
                child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.creditcard, size: 24, color: MyColors.primaryColor,),
                            SizedBox(width: 20.w,),
                            Text("Payment Method", style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron, size: 24, color: MyColors.primaryColor,)
                      ],
                    ),
                ),
              ),
              Container(
                height: 50.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1
                    )
                  )
                ),
                child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.heart, size: 24, color: MyColors.primaryColor,),
                            SizedBox(width: 20.w,),
                            Text("Saved", style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron, size: 24, color: MyColors.primaryColor,)
                      ],
                    ),
                ),
              ),
              Container(
                height: 50.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1
                    )
                  )
                ),
                child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.settings_solid, size: 24, color: MyColors.primaryColor,),
                            SizedBox(width: 20.w,),
                            Text("Setting", style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron, size: 24, color: MyColors.primaryColor,)
                      ],
                    ),
                ),
              ),
              Container(
                height: 50.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1
                    )
                  )
                ),
                child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.history, size: 24, color: MyColors.primaryColor,),
                            SizedBox(width: 20.w,),
                            Text("Transactions", style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron, size: 24, color: MyColors.primaryColor,)
                      ],
                    ),
                ),
              ),
              Container(
                height: 50.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1
                    )
                  )
                ),
                child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.info_circle, size: 24, color: MyColors.primaryColor,),
                            SizedBox(width: 20.w,),
                            Text("Help Center", style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron, size: 24, color: MyColors.primaryColor,)
                      ],
                    ),
                ),
              ),
              Container(
                height: 50.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1
                    )
                  )
                ),
                child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.lock_outlined, size: 24, color: MyColors.primaryColor,),
                            SizedBox(width: 20.w,),
                            Text("Privacy Policy", style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron, size: 24, color: MyColors.primaryColor,)
                      ],
                    ),
                ),
              ),
              Container(
                height: 50.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1
                    )
                  )
                ),
                child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.exit_to_app_rounded, size: 24, color: MyColors.primaryColor,),
                            SizedBox(width: 20.w,),
                            Text("Log out", style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron, size: 24, color: MyColors.primaryColor,)
                      ],
                    ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
