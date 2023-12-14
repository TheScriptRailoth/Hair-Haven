import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class SentTransaction extends StatefulWidget {

  final String date;
  final String amount;
  final String btc;
  const SentTransaction({Key? key, required this.amount, required this.btc, required this.date}):super(key: key);

  @override
  State<SentTransaction> createState() => _SentTransactionState();
}

class _SentTransactionState extends State<SentTransaction> {
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
      height: 55.h,
      width: MediaQuery.sizeOf(context).width-20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                height: 36.h,
                width: 36.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFFEDEC),
                ),
                child: Transform.rotate(
                  angle: -50*(3.14/180),
                  child: Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(width: 10.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sent BTC", style: GoogleFonts.manrope(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),),
                  Text(widget.date, style: GoogleFonts.manrope(
                    fontSize: 14.sp,
                    color: Color(0xffB7BCC2),
                    fontWeight: FontWeight.w400,
                  ),)
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("US\$"+widget.amount, style: GoogleFonts.manrope(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),),
              Text(widget.btc+"BTC", style: GoogleFonts.manrope(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xffB7BCC2),
              ),),
            ],
          ),
        ],
      ),
    ),
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: 1,
          color: Color(0xffB7BCC2),
        )
      ],
    );
  }
}
