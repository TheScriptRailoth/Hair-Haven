import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/mycolors.dart';
class CancelledBookingWidget extends StatefulWidget {
  final String BarberName;
  final String BarberTitle;
  final String BarberAddress;
  final String BarberServiceId;
  final String BarberProfileImg;
  final String BookingDate;
  final String BookingTime;
  const CancelledBookingWidget({Key?key, required this.BarberName, required this.BarberAddress, required this.BarberProfileImg, required this.BarberServiceId, required this.BarberTitle, required this.BookingDate, required this.BookingTime}):super(key: key);

  @override
  State<CancelledBookingWidget> createState() => _CancelledBookingWidgetState();
}

class _CancelledBookingWidgetState extends State<CancelledBookingWidget> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                        Text(widget.BookingDate, style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp
                        ),),
                        Text("-", style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp
                        ),),
                        Text(widget.BookingTime, style:GoogleFonts.roboto(
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
                              child:Image.asset(widget.BarberProfileImg, fit: BoxFit.contain,)
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
                        Text(widget.BarberName, style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ), overflow: TextOverflow.ellipsis, maxLines: 1,),
                        SizedBox(height: 5.h,),
                        Text(widget.BarberTitle, style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                        ), overflow: TextOverflow.ellipsis,),
                        SizedBox(height: 5.h,),
                        Text(widget.BarberAddress, style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Color(0xff585656),
                        ), overflow: TextOverflow.ellipsis,),
                        SizedBox(height: 5.h,),
                        Text("Service ID : "+widget.BarberServiceId, style: GoogleFonts.roboto(
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
    );
  }
}
