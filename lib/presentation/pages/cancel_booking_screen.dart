import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/pages/main_screens/bookings_screen.dart';

import '../../core/theme/mycolors.dart';
class CancelBookingScreen extends StatefulWidget {
  const CancelBookingScreen({super.key});

  @override
  State<CancelBookingScreen> createState() => _CancelBookingScreenState();
}
String?selectedReasons;

class _CancelBookingScreenState extends State<CancelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: MyColors.primaryColor),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Cancel Booking",
          style: GoogleFonts.lora(
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded, color: MyColors.primaryColor,))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                child: Text("Please select the reason for cancellation", style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Colors.black
                ),
                textAlign: TextAlign.start,),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  buildOption('Schedule Change'),
                  buildOption('Weather  Condition'),
                  buildOption('Parking Availability'),
                  buildOption('I have alternate option'),
                ],
              ),
            ),
            Spacer(),
            ...(selectedReasons!=null
                ? [Padding(
              padding: EdgeInsets.symmetric(vertical: 20.w),
              child: Container(
                height: 45.h,
                width: 300.w,
                child: ElevatedButton(onPressed: (){
                      final snackBar=SnackBar(
                          content: Text('Booking Canceled'),
                          duration: Duration(seconds: 2),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, child: Text(
                  "Continue", style: GoogleFonts.lato(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
                ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(MyColors.primaryColor)
                  ),),
              ),
            )]:[]),
          ],
        ),
      ),
    );
  }
  Widget buildOption(String title) {
    bool isSelected = selectedReasons==title;
    return TextButton(
      onPressed: () {
        setState(() {
          if (isSelected) {
            selectedReasons=null;
          } else {
            selectedReasons=title;
          }
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
          Radio<String>(
            value: title,
            groupValue: selectedReasons,
            onChanged: (String? value) {
              setState(() {
                selectedReasons = value; // Select the reason
              });
            },
            activeColor: MyColors.primaryColor,
          ),

        ],
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return MyColors.primaryColor.withOpacity(0.1);
            }
            return Colors.grey.withOpacity(0.1);
          },
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }

}
