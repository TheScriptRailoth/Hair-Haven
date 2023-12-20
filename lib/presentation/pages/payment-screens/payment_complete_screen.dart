import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../core/theme/mycolors.dart';
import '../../widgets/bottom_nav_bar.dart';
class PaymentCompleteScreen extends StatefulWidget {
  final String SalonName;
  final String TotalAmount;
  const PaymentCompleteScreen({Key? key, required this.SalonName, required this.TotalAmount}):super(key: key);

  @override
  State<PaymentCompleteScreen> createState() => _PaymentCompleteScreenState();
}

class _PaymentCompleteScreenState extends State<PaymentCompleteScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController
      (
        vsync: this,
      duration: const Duration(milliseconds: 1000),
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
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                    child: Center(
                      child: Lottie.asset(
                          'assets/animation/complete_payment.json',
                        controller: _controller,
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "You have successfully sent \$"+widget.TotalAmount+" to "+widget.SalonName, style: GoogleFonts.montserrat(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ), textAlign: TextAlign.center,),
                ),
              ],
            ),
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
      );

  }
}
