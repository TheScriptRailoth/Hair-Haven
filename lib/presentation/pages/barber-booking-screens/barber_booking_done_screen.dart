import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/pages/main_screens/home_screen.dart';
import 'package:hair_haven/presentation/widgets/bottom_nav_bar.dart';
import 'package:lottie/lottie.dart';

import '../../../core/theme/mycolors.dart';
class BarberBookingDoneScreen extends StatefulWidget {
  const BarberBookingDoneScreen({super.key});

  @override
  State<BarberBookingDoneScreen> createState() => _BarberBookingDoneScreenState();
}

class _BarberBookingDoneScreenState extends State<BarberBookingDoneScreen> with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );
    _controller.forward();
    _controller.addStatusListener((status) {
        if(status==AnimationStatus.completed){
          setState(() {});
        }
    });
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: Lottie.asset(
                      'assets/animation/booking_complete_animation.json',
                    onLoaded: (composition){
                        },
                    repeat: false,
                  )
                ),
                Text("THANK YOU!", style: GoogleFonts.lora(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),),
              ],
            ),
            SizedBox(height: 100.h,),
            _controller.status == AnimationStatus.completed?
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Container(
                    height: 50.h,
                    width: 358.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: MyColors.primaryColor, width: 2)
                    ),
                    child: TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Return To Home Screen", style:GoogleFonts.lora(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: MyColors.primaryColor,
                          ),),
                          Icon(Icons.keyboard_return_rounded, color: MyColors.primaryColor,)
                        ],
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return BottomNavBar();
                        }));
                      },
                    )
                ),
              )
              :Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Container(
                  height: 50.h,
                  width: 358.w,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
