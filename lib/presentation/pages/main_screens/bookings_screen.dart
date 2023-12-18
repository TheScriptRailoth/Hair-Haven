import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/pages/cancel_booking_screen.dart';

import '../../../core/theme/mycolors.dart';
import '../../widgets/booking-screen-widgets/upcoming_booking_widgets.dart';
class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Bookings", style: GoogleFonts.lora(
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
          bottom: TabBar(
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
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  UpcomingBookingWidget(BarberName: 'Ralph Jones', BarberAddress: '6391 Elgin St. Celina, Delaware', BarberProfileImg: 'assets/images/barber3.png', BarberServiceId: '#1234H8906L', BarberTitle: 'Professional Barber', BookingDate: 'Aug 24,2024', BookingTime: '10:00PM',),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 230.h,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffA6A3A3), width: 1),
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
                                      Text(
                                        "Aug 24, 2024 - 10:00PM",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 1,
                            color: Color(0xffA6A3A3),
                          ),
                          Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 90.h,
                                        width: 90.w,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.yellow
                                        ),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20.r),
                                            child:Image.asset('assets/images/barber4.png', fit: BoxFit.contain,)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on_outlined, color: MyColors.primaryColor, size: 16),
                                      SizedBox(height: 10.h),
                                      Icon(CupertinoIcons.phone, color: Colors.red, size: 16),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Ralph Jones",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "Professional Barber",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "6391 Elgin St. Celina, Delaware",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff585656),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "Service ID: #1234H8906L",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff585656),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
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
                                        height: 24.h,
                                        width: 283.w,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "View E-Receipt",
                                            style: GoogleFonts.roboto(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all(MyColors.primaryColor),
                                            side: MaterialStateProperty.all(
                                              BorderSide(width: 1, color: MyColors.primaryColor),
                                            ),
                                          ),
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 230.h,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffA6A3A3), width: 1),
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
                                      Text(
                                        "Aug 24, 2024 - 10:00PM",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 1,
                            color: Color(0xffA6A3A3),
                          ),
                          Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 90.h,
                                        width: 90.w,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.yellow
                                        ),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20.r),
                                            child:Image.asset('assets/images/barber4.png', fit: BoxFit.contain,)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on_outlined, color: MyColors.primaryColor, size: 16),
                                      SizedBox(height: 10.h),
                                      Icon(CupertinoIcons.phone, color: Colors.red, size: 16),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Ralph Jones",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "Professional Barber",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "6391 Elgin St. Celina, Delaware",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff585656),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "Service ID: #1234H8906L",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff585656),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
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
                                        height: 24.h,
                                        width: 283.w,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "View E-Receipt",
                                            style: GoogleFonts.roboto(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all(MyColors.primaryColor),
                                            side: MaterialStateProperty.all(
                                              BorderSide(width: 1, color: MyColors.primaryColor),
                                            ),
                                          ),
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
                    ),
                  ),

                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 230.h,
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
                              ],
                            ),
                          ),
                          Container(
                            height: 1,
                            color: Color(0xffA6A3A3),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(20.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 90.h,
                                        width: 90.w,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.yellow
                                        ),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20.r),
                                            child:Image.asset('assets/images/barber4.png', fit: BoxFit.contain,)
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on_outlined, color: MyColors.primaryColor,size: 16,),
                                      SizedBox(height: 10.h,),
                                      Icon(CupertinoIcons.phone, color: Colors.red,size: 16,)
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Ralph Jones", style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                      ), overflow: TextOverflow.ellipsis, maxLines: 1,),
                                      SizedBox(height: 5.h,),
                                      Text("Professional Barber", style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                      ), overflow: TextOverflow.ellipsis,),
                                      SizedBox(height: 5.h,),
                                      Text("6391 Elgin St. Celina, Delaware", style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                        color: Color(0xff585656),
                                      ), overflow: TextOverflow.ellipsis,),
                                      SizedBox(height: 5.h,),
                                      Text("Service ID :  #1234H8906L", style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff585656)
                                      ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,),

                                    ],
                                  )
                                ],
                              ),
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
                                          width: 283.w,
                                          child: TextButton(
                                            onPressed: (){},
                                            child: Text("Re-Book", style: GoogleFonts.roboto(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
