import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class SearchResultWidget extends StatefulWidget {
  final String title;
  final String distance;
  final String rating;
  final String location;
  final String image;
  const SearchResultWidget({
    Key?key,
    required this.title,
    required this.distance,
    required this.rating,
    required this.location,
    required this.image,
  }):super(key: key);

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  @override
  Widget build(BuildContext context) {
    bool isSaved=false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Flexible(
        child: Container(
          height: 85.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(width: 0.5, color: Color(0xff979797)),
          ),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 5),
              Container(
                height: 86.79,
                width: 79,
                child: Image.asset(image, fit: BoxFit.contain),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: GoogleFonts.lora(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        IconButton(
                          icon: Icon(CupertinoIcons.heart,color: isSaved?Colors.red:Colors.grey, size: 20,),
                          onPressed: (){

                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/route_icon.png'),
                        SizedBox(width: 5),
                        Text(
                          distance,
                          style: GoogleFonts.lora(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff585656),
                          ),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          CupertinoIcons.star_fill,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          rating,
                          style: GoogleFonts.lora(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff585656),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 15,
                          color: Color(0xff585656),
                        ),
                        SizedBox(width: 5),
                        Text(
                          location,
                          style: GoogleFonts.lora(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff585656),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w,)
            ],
          ),
        ),
      ),
    );
  }
}



// class SearchResultWidget extends StatefulWidget {
//   SearchResultWidget({
//     Key? key,
//     required this.title,
//     required this.distance,
//     required this.rating,
//     required this.location,
//     required this.image}):super(key: key);
//
//   late String title;
//   late String distance;
//   late String rating;
//   late String location;
//   late String image;
//
//   @override
//   State<SearchResultWidget> createState() => _SearchResultWidgetState();
// }
//
// class _SearchResultWidgetState extends State<SearchResultWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15),
//         child: Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(6.r),
//               border: Border.all(width: 0.5, color: Color(0xff979797))
//           ),
//           height: 90.h,
//           width: 350.w,
//           child: Row(
//             children: [
//               SizedBox(width: 5.w,),
//               Container(
//                 height: 86.79.h,
//                 width: 79.w,
//                 child: Image.asset(widget.image, fit: BoxFit.contain,),
//               ),
//               SizedBox(width: 15.w,),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 15.h,),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Text(widget.title, style: GoogleFonts.lora(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 16.sp
//                         ),
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 1,
//                         ),
//                       ),
//                       // SizedBox(width: 70.w,),
//                       Icon(CupertinoIcons.heart_fill, color: Colors.grey.withOpacity(0.5), size: 20,)
//                     ],
//                   ),
//                   SizedBox(height: 5.h,),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Image.asset('assets/route_icon.png'),
//                       SizedBox(width: 5.w,),
//                       Text(widget.distance, style: GoogleFonts.lora(
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.w400, color: Color(0xff585656)
//                       ),),
//                       SizedBox(width:15.w),
//                       Icon(CupertinoIcons.star_fill, color: Colors.yellow, size: 15,),
//                       SizedBox(width: 5.w,),
//                       Text(widget.rating, style: GoogleFonts.lora(
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.w400, color: Color(0xff585656)
//                       ),),
//                     ],
//                   ),
//                   SizedBox(height: 5.h,),
//                   Row(
//                     children: [
//                       Icon(Icons.location_on_outlined, size: 15, color: Color(0xff585656),),
//                       SizedBox(width: 5.w,),
//                       Text(widget.location, style: GoogleFonts.lora(
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.w400, color: Color(0xff585656)
//                       ),),
//                     ],
//                   )
//                 ],
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
