import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
class PaymentCompleteScreen extends StatefulWidget {
  const PaymentCompleteScreen({super.key});

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
                  child: Lottie.asset('assets/animation/complete_payment.json'),
                ),
              ),
            Text("You have successfully sent \$500 to Premium Salon", style: GoogleFonts.montserrat(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ), textAlign: TextAlign.center,)
          ],
        ),
      );

  }
}
