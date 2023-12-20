import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class SendMessageWidget extends StatefulWidget {
  final String msg;
  const SendMessageWidget({Key?key, required this.msg}):super(key: key);

  @override
  State<SendMessageWidget> createState() => _SendMessageWidgetState();
}

class _SendMessageWidgetState extends State<SendMessageWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width*0.7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  widget.msg,
                  style: GoogleFonts.dmSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10.h,)
            ],
          ),
          decoration: BoxDecoration(
              color: Color(0xffA3A3A3),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20.r), topLeft:Radius.circular(20.r), bottomLeft: Radius.circular(20.r))
          ),
          width: constraints.maxWidth,
        );
      },
    );
  }
}
