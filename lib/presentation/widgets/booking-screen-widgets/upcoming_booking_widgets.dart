import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/mycolors.dart';
import '../../pages/barber-booking-screens/cancel_booking_screen.dart';
class UpcomingBookingWidget extends StatefulWidget {
  final String BarberName;
  final String BarberTitle;
  final String BarberAddress;
  final String BarberServiceId;
  final String BarberProfileImg;
  final String BookingDate;
  final String BookingTime;
  const UpcomingBookingWidget({Key?key, required this.BarberName, required this.BarberAddress, required this.BarberProfileImg, required this.BarberServiceId, required this.BarberTitle, required this.BookingDate, required this.BookingTime}):super(key: key);

  @override
  State<UpcomingBookingWidget> createState() => _UpcomingBookingWidgetState();
}

class _UpcomingBookingWidgetState extends State<UpcomingBookingWidget> {
  bool _isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 230.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffA6A3A3), width: 1),
        ),
        child: Column(
          children: [
            Container(
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Row(
                      children: [
                        Text(
                          widget.BookingDate.toString(),
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        Text(
                          "-",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                          ),
                        ),
                        Text(
                          widget.BookingTime,
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
                  Row(
                    children: [
                      Text(
                        "Remind Me",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                        ),
                      ),
                      Transform.scale(
                        scale: 0.7,
                        child: Switch(
                            value: _isSwitched,
                            onChanged: (value) {
                              setState(() {
                                _isSwitched = value;
                              });
                            },
                            activeColor: Colors.white,
                            inactiveThumbColor: Colors.white,
                            activeTrackColor: MyColors.primaryColor,
                            inactiveTrackColor: Colors.grey.shade300,
                          ),
                        ),
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
                              color: Colors.yellow,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.r),
                              child: Image.asset(
                                widget.BarberProfileImg,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Flexible(
                    //   flex: 2,
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.end,
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Icon(
                    //         Icons.location_on_outlined,
                    //         color: MyColors.primaryColor,
                    //         size: 16,
                    //       ),
                    //       SizedBox(height: 5.h),
                    //       Icon(
                    //         CupertinoIcons.phone,
                    //         color: Colors.red,
                    //         size: 16,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(width: 20.w,),
                    Flexible(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.BarberName,
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            widget.BarberTitle,
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              Icon(
                                  Icons.location_on_outlined,
                                  color: MyColors.primaryColor,
                                  size: 16,
                              ),
                              SizedBox(width: 5.w,),
                              Text(
                                widget.BarberAddress,
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
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              Icon(
                                  CupertinoIcons.phone,
                                  color: Colors.red,
                                  size: 16,
                              ),
                              SizedBox(width: 5.w,),
                              Text(
                                "Service ID : " + widget.BarberServiceId,
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
                        ],
                      ),
                    ),
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
                          width: 113.w,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return CancelBookingScreen(
                                      BarberServiceId: widget.BarberServiceId,
                                      BarberAddress: widget.BarberAddress,
                                      BarberTitle: widget.BarberTitle,
                                      BarberName: widget.BarberName,
                                      BookingTime: widget.BookingTime,
                                      BookingDate: widget.BookingDate,
                                      BarberProfile: widget.BarberProfileImg);
                                }),
                              );
                            },
                            child: Text(
                              "Cancel",
                              style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                BorderSide(width: 1, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 24.h,
                          width: 113.w,
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
    );

    // return Padding(
    //   padding: const EdgeInsets.all(20.0),
    //   child: Container(
    //     height: 230.h,
    //     width: MediaQuery.sizeOf(context).width,
    //     decoration: BoxDecoration(
    //         border: Border.all(color: Color(0xffA6A3A3), width: 1)
    //     ),
    //     child: Column(
    //       children: [
    //         Container(
    //           height: 50.h,
    //           width: MediaQuery.sizeOf(context).width,
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               Padding(
    //                 padding: EdgeInsets.only(left: 20.w),
    //                 child: Row(
    //                   children: [
    //                     Text(widget.BookingDate.toString(), style:GoogleFonts.roboto(
    //                         fontWeight: FontWeight.w500,
    //                         fontSize: 14.sp
    //                     ),),
    //                     Text("-", style:GoogleFonts.roboto(
    //                         fontWeight: FontWeight.w500,
    //                         fontSize: 14.sp
    //                     ),),
    //                     Text(widget.BookingTime, style:GoogleFonts.roboto(
    //                         fontWeight: FontWeight.w500,
    //                         fontSize: 14.sp
    //                     ),),
    //                   ],
    //                 ),
    //               ),
    //               Row(
    //                 children: [
    //                   Text("Remind Me", style:GoogleFonts.roboto(
    //                       fontWeight: FontWeight.w500,
    //                       fontSize: 10.sp
    //                   ),),
    //                   Transform.scale(
    //                     scale: 0.7,
    //                     child: Switch(value: _isSwitched,
    //                       onChanged: (value){
    //                         setState(() {
    //                           _isSwitched=value;
    //                         });
    //                       },
    //                       activeColor: Colors.white,
    //                       inactiveThumbColor: Colors.white,
    //                       activeTrackColor: MyColors.primaryColor,
    //                       inactiveTrackColor: Colors.white,
    //                     ),
    //                   )
    //                 ],
    //               )
    //             ],
    //           ),
    //         ),
    //         Container(
    //           height: 1,
    //           color: Color(0xffA6A3A3),
    //         ),
    //         Expanded(
    //           child: Padding(
    //             padding: EdgeInsets.all(20.w),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Column(
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Container(
    //                       height: 90.h,
    //                       width: 90.w,
    //                       decoration: BoxDecoration(
    //                           shape: BoxShape.circle,
    //                           color: Colors.yellow
    //                       ),
    //                       child: ClipRRect(
    //                           borderRadius: BorderRadius.circular(20.r),
    //                           child:Image.asset(widget.BarberProfileImg, fit: BoxFit.contain,)
    //                       ),
    //                     )
    //                   ],
    //                 ),
    //                 Column(
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Icon(Icons.location_on_outlined, color: MyColors.primaryColor,size: 16,),
    //                     SizedBox(height: 10.h,),
    //                     Icon(CupertinoIcons.phone, color: Colors.red,size: 16,)
    //                   ],
    //                 ),
    //                 Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Text(widget.BarberName, style: GoogleFonts.roboto(
    //                       fontWeight: FontWeight.w500,
    //                       fontSize: 16.sp,
    //                     ), overflow: TextOverflow.ellipsis, maxLines: 1,),
    //                     SizedBox(height: 5.h,),
    //                     Text(widget.BarberTitle, style: GoogleFonts.roboto(
    //                       fontWeight: FontWeight.w400,
    //                       fontSize: 16.sp,
    //                     ), overflow: TextOverflow.ellipsis,),
    //                     SizedBox(height: 5.h,),
    //                     Text(widget.BarberAddress, style: GoogleFonts.roboto(
    //                       fontWeight: FontWeight.w400,
    //                       fontSize: 12.sp,
    //                       color: Color(0xff585656),
    //                     ), overflow: TextOverflow.ellipsis,),
    //                     SizedBox(height: 5.h,),
    //                     Text("Service ID :  "+widget.BarberServiceId, style: GoogleFonts.roboto(
    //                         fontWeight: FontWeight.w400,
    //                         fontSize: 12.sp,
    //                         color: Color(0xff585656)
    //                     ),
    //                       overflow: TextOverflow.ellipsis,
    //                       maxLines: 1,),
    //
    //                   ],
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //         Container(
    //           height: 1,
    //           color: Color(0xffA6A3A3),
    //         ),
    //         Container(
    //           height: 40.h,
    //           child: Row(
    //             children: [
    //               Expanded(
    //                   child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: [
    //                       Container(
    //                         height:24.h,
    //                         width: 113.w,
    //                         child: TextButton(
    //                           onPressed: (){
    //                             Navigator.push(context, MaterialPageRoute(builder: (context){
    //                               return CancelBookingScreen();
    //                             }));
    //                           },
    //                           child: Text("Cancel", style: GoogleFonts.roboto(
    //                               fontSize: 12.sp,
    //                               fontWeight: FontWeight.w400,
    //                               color: Colors.black
    //                           ),),
    //                           style: ButtonStyle(
    //                               side: MaterialStateProperty.all(BorderSide(width: 1,color: Colors.black))
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   )
    //               ),
    //               Expanded(
    //                   child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: [
    //                       Container(
    //                         height:24.h,
    //                         width: 113.w,
    //                         child: TextButton(
    //                           onPressed: (){},
    //                           child: Text("View E-Receipt", style: GoogleFonts.roboto(
    //                               fontSize: 12.sp,
    //                               fontWeight: FontWeight.w400,
    //                               color: Colors.white
    //                           ),),
    //                           style: ButtonStyle(
    //                               backgroundColor: MaterialStateProperty.all(MyColors.primaryColor),
    //                               side: MaterialStateProperty.all(BorderSide(width: 1,color: MyColors.primaryColor))
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   )
    //               ),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
