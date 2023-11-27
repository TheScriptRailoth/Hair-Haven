import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ReviewerWidget extends StatefulWidget {
   ReviewerWidget({super.key, required this.name, required this.review, required this.rating, required this.profileImg});

   String name;
  String review;
  String rating;
  String profileImg;
  @override
  State<ReviewerWidget> createState() => _ReviewerWidgetState();
}

class _ReviewerWidgetState extends State<ReviewerWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 61.h,
          width: 61.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            widget.profileImg,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: 20.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      widget.name,
                      style: GoogleFonts.roboto(
                        fontSize: 18.sp,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 13),
                      SizedBox(width: 3.w),
                      Text(
                        widget.rating,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: 230.w,
                  child: Text(
                    widget.review,
                    style: GoogleFonts.lato(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SizedBox(width: 10.w),
            ],
          ),
        ),
      ],
    );


    // return Row(
    //   children: [
    //     Container(
    //       height:61.h,
    //       width: 61.w,
    //       decoration: BoxDecoration(
    //         shape: BoxShape.circle,
    //       ),
    //       child: Image.asset(widget.profileImg,
    //         fit: BoxFit.contain,),
    //     ),
    //     SizedBox(width: 20.w,),
    //     Column(
    //       children: [
    //         Row(
    //           children: [
    //             Text(widget.name,
    //               style: GoogleFonts.roboto(
    //                   fontSize: 18.sp,
    //                   fontStyle: FontStyle.italic,
    //                   fontWeight: FontWeight.w100
    //               ),),
    //             SizedBox(width: 120.w,),
    //             Row(
    //               children: [
    //                 Icon(Icons.star, color: Colors.amber,size: 13,),
    //                 SizedBox(width: 3.w,),
    //                 Text(widget.rating, style: GoogleFonts.lato(
    //                     fontWeight: FontWeight.w500,
    //                     fontSize: 12.sp
    //                 ),)
    //               ],
    //             )
    //           ],
    //         ),
    //         SizedBox(height: 10.h,),
    //         Container(
    //           width: 230.w,
    //           child: Text(widget.review,
    //             style: GoogleFonts.lato(
    //                 fontSize: 10.sp,
    //                 fontWeight: FontWeight.w400
    //             ),
    //             textAlign: TextAlign.start,
    //             maxLines: 5,
    //             overflow: TextOverflow.ellipsis,
    //           ),
    //         ),
    //         SizedBox(width: 10.w,)
    //       ],
    //     ),
    //   ],
    // );
  }
}
