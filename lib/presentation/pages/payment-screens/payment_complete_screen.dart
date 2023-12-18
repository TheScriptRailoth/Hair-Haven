import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
class PaymentCompleteScreen extends StatefulWidget {
  final String SalonName;
  final String TotalAmount;
  const PaymentCompleteScreen({Key? key, required this.SalonName, required this.TotalAmount}):super(key: key);

  @override
  State<PaymentCompleteScreen> createState() => _PaymentCompleteScreenState();
}

class _PaymentCompleteScreenState extends State<PaymentCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Center(
                  child: Lottie.asset(
                      'assets/animation/complete_payment.json',
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
            )
          ],
        ),
      );

  }
}
