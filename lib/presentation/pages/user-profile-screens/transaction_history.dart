import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/mycolors.dart';
class TransactionHistorty extends StatefulWidget {
  const TransactionHistorty({super.key});

  @override
  State<TransactionHistorty> createState() => _TransactionHistortyState();
}

class _TransactionHistortyState extends State<TransactionHistorty> {
  bool _isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Transaction", style: GoogleFonts.lora(
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
      ),
      body: Center(
        child: GestureDetector(
          onTapDown: (TapDownDetails details) {
            setState(() {
              _isSwitched = details.localPosition.dx >= 80; 
            });
          },
          child: Container(
            width: 160,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 300),
                  left: _isSwitched ? 70 : 0,
                  child: Container(
                    width: 90,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.blue,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      _isSwitched ? 'Right' : 'Left',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
