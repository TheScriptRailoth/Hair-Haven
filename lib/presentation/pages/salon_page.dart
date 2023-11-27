import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/widgets/reviewer_widget.dart';
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
                                  SizedBox(height: 20.h,),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20.h,),
                                  Text("Established in the year 2009, The Roose Parlour & Spa is a\npopular salon in Downtown Phoenix. From haircut, styling to\ncolor and other hair treatments, and spa services, the salon\noffers numerous services for its clients.",
                                    style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  SizedBox(height: 10.h,),
                                  Text("Hair Salon & Spa Mission Statement",
                                    style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  SizedBox(height: 10.h,),
                                  Text("We celebrate women and men in their real, most raw,\nauthentic brilliance, who believe in themselves and are ready\nto step into the look they love. We employ hair products\nwith some of the most natural and rich ingredients because\nwe believe you should never expect less.",
                                    style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  SizedBox(height: 20.h,),
                                  Container(
                                    height: 1.5,
                                    width: MediaQuery.sizeOf(context).width,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Review summary", style: GoogleFonts.roboto(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 22.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w100
                                      ),),
                                      Row(
                                        children: [
                                          Icon(Icons.star, color: Colors.amber, size: 25,),
                                          SizedBox(width: 5.w),
                                          Text("4.5", style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 40.sp
                                          ),),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10.h,),
                                  Container(
                                    height: 1.5,
                                    width: MediaQuery.sizeOf(context).width,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  SizedBox(height: 10.h,),
                                  ReviewerWidget(
                                      name: "Devon Lane",
                                      review: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                                      rating: "4.5",
                                      profileImg: "assets/images/devon_lane.png"
                                  ),
                                  SizedBox(height: 10.h,),
                                  Container(
                                    height: 1.5,
                                    width: MediaQuery.sizeOf(context).width,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  SizedBox(height: 10.h,),
                                  ReviewerWidget(
                                      name: "Jenny Wilson",
                                      review: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                                      rating: "4.5",
                                      profileImg: "assets/images/jenny_wilson.png"
                                  ),

                                  SizedBox(height: 10.h,),
                                  Container(
                                    height: 1.5,
                                    width: MediaQuery.sizeOf(context).width,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  SizedBox(height: 10.h,),
                                  ReviewerWidget(
                                      name: "Jacob Jones",
                                      review: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                                      rating: "4.5",
                                      profileImg: "assets/images/jacob_jones.png"
                                  ),
                                  SizedBox(height: 50.h,)

                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  SizedBox(height: 10.h,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Review summary", style: GoogleFonts.roboto(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 22.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w100
                                      ),),
                                      Row(
                                        children: [
                                          Icon(Icons.star, color: Colors.amber, size: 25,),
                                          SizedBox(width: 5.w),
                                          Text("4.5", style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 40.sp
                                          ),),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10.h,),
                                  Container(
                                    height: 1.5,
                                    width: MediaQuery.sizeOf(context).width,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  SizedBox(height: 10.h,),
                                  ReviewerWidget(
                                      name: "Devon Lane",
                                      review: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                                      rating: "4.5",
                                      profileImg: "assets/images/devon_lane.png"
                                  ),
                                  SizedBox(height: 10.h,),
                                  Container(
                                    height: 1.5,
                                    width: MediaQuery.sizeOf(context).width,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  SizedBox(height: 10.h,),
                                  ReviewerWidget(
                                      name: "Jenny Wilson",
                                      review: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                                      rating: "4.5",
                                      profileImg: "assets/images/jenny_wilson.png"
                                  ),

                                  SizedBox(height: 10.h,),
                                  Container(
                                    height: 1.5,
                                    width: MediaQuery.sizeOf(context).width,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  SizedBox(height: 10.h,),
                                  ReviewerWidget(
                                      name: "Jacob Jones",
                                      review: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                                      rating: "4.5",
                                      profileImg: "assets/images/jacob_jones.png"
                                  ),
                                  SizedBox(height: 10.h,),
                                  Container(
                                    height: 1.5,
                                    width: MediaQuery.sizeOf(context).width,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  SizedBox(height: 10.h,),
                                  ReviewerWidget(
                                      name: "Jacob Jones",
                                      review: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                                      rating: "4.5",
                                      profileImg: "assets/images/jacob_jones.png"
                                  ),

                                  SizedBox(height: 50.h,)
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
