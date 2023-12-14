import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ReceivedTransaction extends StatefulWidget {

  final String date;
  final String amount;
  final String btc;
  const ReceivedTransaction({Key? key, required this.amount, required this.btc, required this.date}):super(key: key);

  @override
  State<ReceivedTransaction> createState() => _ReceivedTransactionState();
}

class _ReceivedTransactionState extends State<ReceivedTransaction> {
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
                  color: Colors.greenAccent.withOpacity(0.2),
                ),
                child: Transform.rotate(
                  angle: 120*(3.14/180),
                  child: Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.green,
                  ),
                ),
              ),
              SizedBox(width: 10.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Received BTC", style: GoogleFonts.manrope(
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
