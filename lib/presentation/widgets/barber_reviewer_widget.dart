import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class BarberReviewerWidget extends StatefulWidget {
  final String name;
  final String review;
  final String date;
  final double rating;
  final String img;
  const BarberReviewerWidget({Key?key, required this.name, required this.review, required this.date, required this.rating, required this.img}):super(key: key);

  @override
  State<BarberReviewerWidget> createState() => _BarberReviewerWidgetState();
}

class _BarberReviewerWidgetState extends State<BarberReviewerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h,),
        Row(
          children: [
            CircleAvatar(
              radius: 40.r,
              child: Image.asset(
                widget.img,
                width: 127.w,
                height: 127.h,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 30.w,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.name, style: GoogleFonts.lora(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),),
                      Text(widget.date, style: GoogleFonts.lora(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400
                      ),)
                    ],
                  ),
                  Row(
                    children: [
                      Text(widget.rating.toString(), style: GoogleFonts.lora(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp
                      ),),
                      SizedBox(width: 5.w,),
                      RatingBar.builder(
                        initialRating: widget.rating,
                        onRatingUpdate: (value){},
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 20,
                        itemBuilder: (context, _)=>Icon(
                          Icons.star,
                          color: Color(0xffFFB800),
                        ),
                      ),
                    ],
                  ),
                  Text(widget.review, style: GoogleFonts.lora(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 5.h,),
                ],
              ),
            )

          ],
        ),
      ],
    );
  }
}
