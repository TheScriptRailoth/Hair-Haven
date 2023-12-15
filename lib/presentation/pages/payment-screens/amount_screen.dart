import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/pages/payment-screens/payment_complete_screen.dart';
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
              TextFormField(
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 36.sp,
                  color: MyColors.primaryColor
                ),
              ),
              Text("To"),
              Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Container(
                      height: 74.h,
                      width: 96.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17.r),
                        color: Color(0xffF5F6FA),
                      ),
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          '$index',
                          style: GoogleFonts.montserrat(fontSize: 24.sp, fontWeight: FontWeight.w500, color: MyColors.primaryColor),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
              SizedBox(height: 20.h,),
              Container(
              height: 48.h,
              width: 344.w,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return PaymentCompleteScreen();
                  }));
                }, child: Text("Next", style: GoogleFonts.lora(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  color: Colors.white
              ),),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(MyColors.primaryColor),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            side: BorderSide(
                                color: MyColors.primaryColor,
                                width: 1
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        )
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
