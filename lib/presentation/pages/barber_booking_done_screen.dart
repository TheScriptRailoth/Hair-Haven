import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/pages/main_screens/home_screen.dart';
import 'package:lottie/lottie.dart';

import '../../core/theme/mycolors.dart';
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
          setState(() {

          });
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
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Lottie.asset(
                    'assets/animation/booking_complete_animation.json',
                  onLoaded: (composition){
                      },
                )
              ),
              Text("THANK YOU!", style: GoogleFonts.lora(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),),
              SizedBox(height: 100.h,),
              if (_controller.status == AnimationStatus.completed) // Show button after animation
                Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Container(
                    height: 50.h,
                    width: 358.w,
                    decoration: BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextButton(
                      child: Text("Continue", style:GoogleFonts.lora(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return HomeScreen();
                        }));
                      },
                    )
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
