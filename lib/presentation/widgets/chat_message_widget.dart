import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/pages/messaging_screen.dart';
import 'package:velocity_x/velocity_x.dart';
class ChatMessageWidget extends StatefulWidget {
  final String userName;
  final String msg;
  final String time;
  final String profileImg;
  late final bool isUnread;
  ChatMessageWidget({Key?key, required this.userName, required this.msg, required this.profileImg, required this.time, required this.isUnread}):super(key: key);

  @override
  State<ChatMessageWidget> createState() => _ChatMessageWidgetState();
}

class _ChatMessageWidgetState extends State<ChatMessageWidget> {
  List<Color>colors=[
    Color(0xffC6B5EF),
    Colors.blue.withOpacity(0.2),
    Colors.blue.withOpacity(0.4)
  ];
  @override
  Widget build(BuildContext context) {
    Color bgColor=colors[Random().nextInt(colors.length)];
    return Container(
      height: 70.h,
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return MessagingScreen(
                userName: widget.userName,
                companyName: 'Albert Barber',
                profileImg: widget.profileImg,
                profileBg: bgColor,
            );
          }));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 43.w,
                  height: 41.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:bgColor,
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
                      Text(widget.msg, style: GoogleFonts.roboto(
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
            Container(
              height: 70.h,
              width: 80.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.time, style: GoogleFonts.dmSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.isUnread?Color(0xff44FC40):null,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
