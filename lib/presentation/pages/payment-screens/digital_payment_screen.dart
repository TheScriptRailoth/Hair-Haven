import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
class DigitalPaymentScreen extends StatefulWidget {
  const DigitalPaymentScreen({super.key});

  @override
  State<DigitalPaymentScreen> createState() => _DigitalPaymentScreenState();
}

class _DigitalPaymentScreenState extends State<DigitalPaymentScreen> {

  bool showHalfScreen = false;
  int selectedOption = 0;
  void toggleAnimation() {
    setState(() {
      showHalfScreen = !showHalfScreen;
    });
  }

  void closeSlide() {
    setState(() {
      showHalfScreen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Digital Payment", style: GoogleFonts.lora(
          fontWeight: FontWeight.w400,
          fontSize: 18.sp,
          color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your Card', style: GoogleFonts.lora(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),),
                SizedBox(height: 15.h,),
                Container(
                  height: 162.h,
                  width: 339.w,
                  child: Image.asset('assets/images/card.png',
                      fit: BoxFit.fill,),
                ),
                SizedBox(height: 30.h,),
                Text("Payment method", style: GoogleFonts.lora(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp
                ),),
                SizedBox(height: 50.h,),
                TextButton(
                    onPressed: toggleAnimation,
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10.w,),
                    Container(
                        height: 34.h,
                        width: 34.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle
                        ),
                        child: Image.asset('assets/images/online_transfer.png',)
                    ),
                    SizedBox(width: 50.w,),
                    Text("Online Transfer", style: GoogleFonts.lora(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Colors.black
                    ),)
                  ],
                ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
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
                SizedBox(height: 20.h,),
                TextButton(
                    onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10.w,),
                    Container(
                        height: 34.h,
                        width: 34.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle
                        ),
                        child: Image.asset('assets/images/Wallet.png',)
                    ),
                    SizedBox(width: 50.w,),
                    Text("Direct Payment", style: GoogleFonts.lora(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Colors.black
                    ),)
                  ],
                ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
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
                Spacer(),
                Container(
                  height: 48.h,
                  width: 344.w,
                  child: TextButton(
                    onPressed: (){}, child: Text("Next", style: GoogleFonts.lora(
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
          IgnorePointer(
            ignoring: !showHalfScreen,
            child: GestureDetector(
              onTap: closeSlide,
              child: Container(
                color: showHalfScreen ? Colors.black54 : Colors.transparent,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            bottom: showHalfScreen ? 0 : -MediaQuery.of(context).size.height / 2.3,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2.3,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r))
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h,),
                    Text('Choose Platform', style: GoogleFonts.lora(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 20.h),
                    buildOption("Paypal", 1, 'assets/images/paypal.png', '1234 - 1710 - 9876'),
                    SizedBox(height: 20.h),
                    buildOption("MasterCard", 2,'assets/images/master_card.png', '1234 - 666 - 9876'),
                    Spacer(),
                    Container(
                      height: 48.h,
                      width: 344.w,
                      child: TextButton(
                        onPressed: (){}, child: Text("Next", style: GoogleFonts.lora(
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
            ),
          ),
        ],
      ),
    );
  }


  Widget buildOption(String title, int value, String img, String card_number) {
    return TextButton(
      onPressed: () {
        setState(() {
          selectedOption = value;
        });
        closeSlide();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  height: 32.h,
                  width: 38.w,
                  child: Image.asset(img, fit: BoxFit.contain,)),
              SizedBox(width: 10.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.lora(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    card_number,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: Color(0xffAAAAAA),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 10.w,),
          Radio<int>(
            value: value,
            groupValue: selectedOption,
            onChanged: (int? val) {
              setState(() {
                selectedOption = val!;
              });
              closeSlide();
            },
            activeColor: MyColors.primaryColor,
            // visualDensity: VisualDensity.standard.copyWith(vertical: -2, horizontal: -2),
          ),
        ],
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}

