import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/pages/payment-screens/digital_payment_screen.dart';
import 'package:hair_haven/presentation/pages/select_services_page.dart';
class TotalOverview extends StatefulWidget {
  final Map<int, String> selectedPrice;
  TotalOverview({Key?key, required this.selectedPrice}):super(key: key);
  
  @override
  State<TotalOverview> createState() => _TotalOverviewState();
}

double getTotalPrice(Map<int, String> selectedItems) {
  double totalPrice = 0.0;
  for (var price in selectedItems.values) {
    totalPrice += double.parse(price.replaceAll('\$', ''));
  }
  return totalPrice;
}

class _TotalOverviewState extends State<TotalOverview> {
  @override
  Widget build(BuildContext context) {
    double totalPrice = getTotalPrice(widget.selectedPrice);
    double totalWithTax = (totalPrice-(totalPrice*18/100))-25;
    String formatTOTAL= totalWithTax.toStringAsFixed(2);
    return Scaffold(
      body: SafeArea(
        child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Container(
                          height: 81.h,
                          width: 81.w,
                          child: Image.asset(
                            'assets/images/premium_salon.png',
                            fit: BoxFit.contain,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r)
                          ),
                        ),
                        SizedBox(width: 15.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Premium Salon", style: GoogleFonts.lato(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.sp,
                            ),),
                            SizedBox(height: 3.h,),
                            Text("Dr. San Jose, Facial", style: GoogleFonts.lato(
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                                color: Colors.grey
                            ),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Facial', style: GoogleFonts.lora(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),),
                        Row(
                          children: [
                            Text('CUSTOMIZE', style: GoogleFonts.lora(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),),
                            SizedBox(width: 2.w,),
                            Icon(CupertinoIcons.chevron_down, color: Colors.grey, size: 15,)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 1.h,
                    color: Color(0xffDADADA),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.square_list, size: 24, color: Colors.black.withOpacity(0.3),),
                        SizedBox(width: 10.w,),
                        Flexible(
                          child: Text("Any Salon & SPA request? We will try our best to convey it", style: GoogleFonts.lora(
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp,
                              color: Colors.black.withOpacity(0.3)
                          ),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 15.h,
                    width: MediaQuery.sizeOf(context).width,
                    color: Color(0xffDADADA).withOpacity(0.5),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height:19.h,
                              width: 19.w,
                              child: Image.asset(
                                'assets/images/Discount.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(width: 8.w,),
                            Text("USE LOOKIT123", style: GoogleFonts.lora(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron, color: Colors.grey, size: 20,)
                      ],
                    ),
                  ),
                  Container(
                    height: 15.h,
                    width: MediaQuery.sizeOf(context).width,
                    color: Color(0xffDADADA).withOpacity(0.5),
                  ),
                  SizedBox(height: 10.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text("Bill Details", style: GoogleFonts.lora(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Colors.black,
                    ),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text("Services Total", style: GoogleFonts.lora(
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                        color: Colors.black.withOpacity(0.3)
                    ),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: SelectServicesPage.selectedItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        final MapEntry<int, String> entry =
                        widget.selectedPrice.entries.elementAt(index);
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    SelectServicesPage.selectedItems[index],
                                    style: GoogleFonts.lora(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20.w),
                                Text(
                                  '${entry.value}',
                                  style: GoogleFonts.lora(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                          ],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Discount by coupon',
                                    style: GoogleFonts.lora(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20.w),
                                Text(
                                  '\$25',
                                  style: GoogleFonts.lora(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Expanded(
                              child: Text(
                                'Tax',
                                style: GoogleFonts.lora(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                                  SizedBox(width: 20.w),
                                  Text(
                              "\$ "+(totalPrice*18/100).toString(),
                              style: GoogleFonts.lora(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ],
                        ),
                            SizedBox(height: 10.h),
                      ],
                    ),
                  ),
                  Container(
                    height: 15.h,
                    width: MediaQuery.sizeOf(context).width,
                    color: Color(0xffDADADA).withOpacity(0.5),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal", style: GoogleFonts.lato(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500
                        ),),
                        Text('\$ '+ formatTOTAL, style:GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp
                        ),)
                      ],
                    ),
                  ),
                  Padding (
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 45.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), bottomLeft: Radius.circular(10.r)),
                                  border: Border.all(color: MyColors.primaryColor, width: 1)
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('\$ '+formatTOTAL, style:GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.sp
                                    ),),
                                    Text("View Deatiled Bill", style: GoogleFonts.lato(
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 45.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10.r), bottomRight: Radius.circular(10.r)),
                              ),
                              child: TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return DigitalPaymentScreen();
                                  }));
                                },
                                child: Text("PROCEED TO PAY", style: GoogleFonts.lora(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    fontStyle: FontStyle.italic
                                ),),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(MyColors.primaryColor)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
        ),
    );
  }
}
