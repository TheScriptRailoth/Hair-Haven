import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
class PaymentAmountScreen extends StatefulWidget {
  const PaymentAmountScreen({super.key});

  @override
  State<PaymentAmountScreen> createState() => _PaymentAmountScreenState();
}

class _PaymentAmountScreenState extends State<PaymentAmountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digital Payment", style: GoogleFonts.lora(
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
            color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: MyColors.primaryColor
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text("Enter Amount", style: GoogleFonts.montserrat(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff3A3A3A)
              ),),
              SizedBox(height: 20.h,),
              Text
          ],
        ),
      ),
    );
  }
}
