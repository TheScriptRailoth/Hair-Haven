import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
class SalonPage extends StatefulWidget {
  const SalonPage({super.key});

  @override
  State<SalonPage> createState() => _SalonPageState();
}

class _SalonPageState extends State<SalonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Cheeky Strandz Spa", style: GoogleFonts.lora(
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: MyColors.primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white)
              ),
              onPressed: () {},
              child: Text("Book Now", style: GoogleFonts.lora(
                color: Colors.black
              ),),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 215.h,
              width: MediaQuery.sizeOf(context).width,
              child: Image.asset('assets/images/premium_salon_bg.png', fit: BoxFit.cover,),
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                SizedBox(width: 15.w,),
                Expanded(
                  child: Text("Premium Salon", style: GoogleFonts.lora(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                  ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(width: 10.w,),
                Icon(Icons.star, size: 15, color: Colors.amber,),
                SizedBox(width: 5.w,),
                Text("4.5", style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w100,
                  fontSize: 16.sp,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic
                ),),
                SizedBox(width:10.w),
                Icon(CupertinoIcons.phone, size: 15, color: Colors.black,),
                SizedBox(width: 5.w,),
                Text("Call", style: GoogleFonts.lora(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700
                ),),
                SizedBox(width: 15.w,)
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                SizedBox(width: 15.w,),
                Icon(Icons.location_on_outlined, color: Colors.grey, size: 13,),
                Expanded(
                  child: Text("2715 Ash Dr. San Jose, South Dakota 83475", style: GoogleFonts.roboto(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                  ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(width: 10.w,),
                Text("5KM", style: GoogleFonts.lora(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700
                ),),
                SizedBox(width: 15.w,)
              ],
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding:EdgeInsets.only(left: 15.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profile_images.png'),
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 1.5,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.grey.withOpacity(0.5),
            ),
            SizedBox(height: 10.h,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20.w,),
                  Container(
                    height:75.h,
                    width: 195.w,
                    child: Stack(
                      children: [
                        Image.asset('assets/images/coupon_banner.png', fit: BoxFit.contain,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10.w,),
                                Container(
                                    height:15,
                                    width: 15,
                                    child: Image.asset('assets/images/Discount.png', fit: BoxFit.contain,),
                                ),
                                Image.asset('assets/images/off_percent.png')
                              ],
                            ),
                            Image.asset('assets/images/coupon_code.png')
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 1.5,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.grey.withOpacity(0.5),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.black,
                          labelStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp
                          ),
                          indicatorColor: MyColors.primaryColor,
                          tabs: [
                            Tab(text: 'Services',),
                            Tab(text: 'Description',),
                            Tab(text: 'Review',)
                          ]
                      ),
                      Container(
                        height: 400.h,
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Center(
                                    child: Text("ja"),
                                  )
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Center(
                                    child: Text("jhj"),
                                  )
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Center(
                                    child: Text("jhj"),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
