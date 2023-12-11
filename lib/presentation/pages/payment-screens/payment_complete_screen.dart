import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: Center(
          child: Lottie.asset(
              'assets/animation/complete_payment.json',
              width: 200.w,
              height: 200.h,
              fit: BoxFit.cover
          )
      ),
    );
  }
}
