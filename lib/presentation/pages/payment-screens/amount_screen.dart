import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/pages/payment-screens/payment_complete_screen.dart';
import 'package:velocity_x/velocity_x.dart';
class PaymentAmountScreen extends StatefulWidget {
  final String totalAmount;
  final String salonName;
  final String salonImg;
  const PaymentAmountScreen({Key? key, required this.totalAmount, required this.salonName, required this.salonImg}):super(key: key);

  @override
  State<PaymentAmountScreen> createState() => _PaymentAmountScreenState();
}

class _PaymentAmountScreenState extends State<PaymentAmountScreen> {
  late TextEditingController _amountController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _amountController=TextEditingController(text: widget.totalAmount);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _amountController.dispose();
  }

  void deleteLastCharacter() {
    if (_amountController.text.isNotEmpty) {
      final int cursorPosition = _amountController.selection.baseOffset;
      final String newText = _amountController.text.replaceRange(
        cursorPosition > 0 ? cursorPosition - 1 : 0,
        cursorPosition,
        '',
      );
      _amountController.text = newText;
      _amountController.selection =
          TextSelection.collapsed(offset: cursorPosition > 0 ? cursorPosition - 1 : 0);
    }
  }
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
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: ListView(
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Enter Amount", style: GoogleFonts.montserrat(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3A3A3A)
                  ),),
                ],
              ),
              SizedBox(height: 20.h,),
              TextFormField(
                readOnly: true,
                controller: _amountController,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                    color: MyColors.primaryColor
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("To", style: GoogleFonts.montserrat(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: MyColors.primaryColor
                  ),),
                ],
              ),
              SizedBox(height: 5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 38.h,
                    width: 38.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: MyColors.primaryColor,width: 2)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.r),
                      child: Image.asset(widget.salonImg, fit: BoxFit.cover,),
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Text(widget.salonName, style: GoogleFonts.montserrat(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: MyColors.primaryColor
                  ),),
                ],
              ),
              SizedBox(height: 30.h,),
              Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                _amountController.text+='1';
                              },
                              child: Text('1', style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: MyColors.primaryColor,
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                _amountController.text+='2';
                              },
                              child: Text('2', style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: MyColors.primaryColor,
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                _amountController.text+='3';
                              },
                              child: Text('3', style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: MyColors.primaryColor,
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                _amountController.text+='4';
                              },
                              child: Text('4', style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: MyColors.primaryColor,
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                _amountController.text+='5';
                              },
                              child: Text('5', style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: MyColors.primaryColor,
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                _amountController.text+='6';
                              },
                              child: Text('6', style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: MyColors.primaryColor,
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                _amountController.text+='7';
                              },
                              child: Text('7', style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: MyColors.primaryColor,
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                _amountController.text+='8';
                              },
                              child: Text('8', style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: MyColors.primaryColor,
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                _amountController.text+='9';
                              },
                              child: Text('9', style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: MyColors.primaryColor,
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                _amountController.text+='.';
                              },
                              child: Text('.', style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: MyColors.primaryColor,
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                _amountController.text+='0';
                              },
                              child: Text('0', style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: MyColors.primaryColor,
                              ),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                          Container(
                            height: 70.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                            child: TextButton(
                              onPressed: (){
                                final String xyz= _amountController.text.substring(0,_amountController.text.length-1);
                                _amountController.text=xyz;
                              },
                              child: Icon(Icons.backspace_outlined, color: MyColors.primaryColor, size: 26,),
                          ),
                          )
                        ],
                      ),
                    ],
                  )
                ),
              SizedBox(height: 20.h,),
              Container(
              height: 48.h,
              width: 344.w,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return PaymentCompleteScreen(SalonName: widget.salonName, TotalAmount: _amountController.text);
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
              SizedBox(height: 10.h,)
          ],
        ),
      ),
    );
  }
}
