import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/pages/date_and_time_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../core/theme/mycolors.dart';

class BarberProfileScreen extends StatefulWidget {
  final String img;
  final String name;
  final String experience;
  const BarberProfileScreen({Key?key, required this.name, required this.img, required this.experience}):super(key: key);

  @override
  State<BarberProfileScreen> createState() => _BarberProfileScreenState();
}

class _BarberProfileScreenState extends State<BarberProfileScreen> {

 double rating=4.8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                child: Expanded(
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 35.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColors.primaryColor
                            ),
                          ),
                          Center(
                              child: Icon(CupertinoIcons.arrow_left, color: Colors.white, size: 22,)
                          )
                        ],
                      ),
                      SizedBox(width: 90.w,),
                      Row(
                        children: [
                          Text("Profile", style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24.sp
                          ),textAlign: TextAlign.center,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 60.5.r,
                      child: Image.asset(
                          widget.img,
                        width: 127.w,
                        height: 127.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 30.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.name, style: GoogleFonts.lora(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),),
                        Text(widget.experience, style: GoogleFonts.lora(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp
                        ),),
                        Text("15 Years Experience", style: GoogleFonts.lora(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp
                        ),),
                        SizedBox(height: 5.h,),
                        Row(
                          children: [
                            Text("4.5", style: GoogleFonts.lora(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp
                            ),),
                            SizedBox(width: 5.w,),
                            RatingBar.builder(
                              initialRating: 4.5,
                              onRatingUpdate: (value){},
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 20,
                              itemBuilder: (context, _)=>Icon(
                                Icons.star,
                                color: Color(0xffFFB800),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )

                  ],
                )
              ),
              SizedBox(height: 25.h,),
              Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    height: 2.h,
                    width: MediaQuery.sizeOf(context).width,
                    color: Colors.grey,
                  )
              ),
              SizedBox(height: 5.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: Color(0xff005E54),
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        indicatorColor: MyColors.primaryColor,
                        tabs: [
                          Tab(text: 'Description', ),
                          Tab(text: 'Review & Rating'),
                          Tab(text: 'Location'),
                        ],
                      ),
                      Container(
                        height: 400.h,
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20.h,),
                                    Text("About", style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp
                                    ),),
                                    SizedBox(height: 10.h,),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Neque porro quisquam est, qui dolorem, xyz l\nipsum quia dolor sit amet, consecteturklkfkkk,\nadipisci velit, sed qu Neque porro quisquam kop\nest, qui dolorem ipsum quia... ",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "Read More",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colors.black, // You can set your desired color
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20.h,),
                                    Container(
                                          height: 2.h,
                                          width: MediaQuery.sizeOf(context).width,
                                          color: Colors.grey,
                                    ),
                                    SizedBox(height: 15.h,),
                                    Text("Contact Information", style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600
                                    ),),
                                    SizedBox(height: 15.h,),
                                    Row(
                                      children: [
                                        Icon(CupertinoIcons.phone_fill, size: 24,),
                                        SizedBox(width: 10.w,),
                                        Text("+233 2600 002 002", style: TextStyle(
                                          fontWeight: FontWeight.w400, fontSize: 16.sp
                                        ),)
                                      ],
                                    ),
                                    SizedBox(height: 10.h,),
                                    Row(
                                      children: [
                                        Image.asset('assets/wp_whatsapp_logo.png'),
                                        SizedBox(width: 10.w,),
                                        Text("+233 2600 002 002", style: TextStyle(
                                          fontWeight: FontWeight.w400, fontSize: 16.sp
                                        ),)
                                      ],
                                    ),
                                    SizedBox(height: 10.h,),
                                    Row(
                                      children: [
                                        Image.asset('assets/insta_black_logo.png'),
                                        SizedBox(width: 10.w,),
                                        Text("raph_jones878", style: TextStyle(
                                            fontWeight: FontWeight.w400, fontSize: 16.sp
                                        ),)
                                      ],
                                    ),
                                    SizedBox(height: 25.h,),
                                    Container(
                                      height: 2.h,
                                      width: MediaQuery.sizeOf(context).width,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(height: 20.h,),
                                    Text("Rate", style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    SizedBox(height: 15.h,),
                                    Text("Starts from \$20.00", style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400
                                    ),),
                                    SizedBox(height: 15.h,),
                                    // Padding(
                                    //   padding:  EdgeInsets.symmetric(horizontal: 10.w),
                                    //   child: Container(
                                    //     height: 50.h,
                                    //     width: 358.w,
                                    //     decoration: BoxDecoration(
                                    //       color: MyColors.primaryColor,
                                    //       borderRadius: BorderRadius.circular(10.r),
                                    //     ),
                                    //     child: TextButton(
                                    //       child: Text("Book Barber", style:GoogleFonts.lora(
                                    //         fontWeight: FontWeight.w600,
                                    //         fontSize: 16.sp,
                                    //         color: Colors.white,
                                    //       ),),
                                    //       onPressed: (){
                                    //         Navigator.push(context, MaterialPageRoute(builder: (context){
                                    //           return DateAndTimeScreen();
                                    //         }));
                                    //       },
                                    //     )
                                    //   ),
                                    // ),
                                    // SizedBox(height: 20.h,),
                                  ],
                                ),
                              ),
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20.h,),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 40.r,
                                        child: Image.asset(
                                          'assets/images/reviewer1.png',
                                          width: 127.w,
                                          height: 127.h,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      SizedBox(width: 30.w,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Arthur", style: GoogleFonts.lora(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.sp,
                                              ),),
                                              SizedBox(width: 95.w,),
                                              Text("15/05/23", style: GoogleFonts.lora(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400
                                              ),)
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("4.5", style: GoogleFonts.lora(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16.sp
                                              ),),
                                              SizedBox(width: 5.w,),
                                              RatingBar.builder(
                                                initialRating: 4.5,
                                                onRatingUpdate: (value){},
                                                direction: Axis.horizontal,
                                                itemCount: 5,
                                                itemSize: 20,
                                                itemBuilder: (context, _)=>Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFB800),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text("He is good at what he does!", style: GoogleFonts.lora(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16.sp
                                          ),),
                                         SizedBox(height: 5.h,),
                                        ],
                                      )

                                    ],
                                  ),
                                  SizedBox(height: 20.h,),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 40.r,
                                        child: Image.asset(
                                          'assets/images/reviewer2.png',
                                          width: 127.w,
                                          height: 127.h,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      SizedBox(width: 30.w,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Kyle", style: GoogleFonts.lora(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.sp,
                                              ),),
                                              SizedBox(width: 95.w,),
                                              Text("15/05/23", style: GoogleFonts.lora(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400
                                              ),)
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("4.5", style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16.sp
                                              ),),
                                              SizedBox(width: 5.w,),
                                              RatingBar.builder(
                                                initialRating: 4.5,
                                                onRatingUpdate: (value){},
                                                direction: Axis.horizontal,
                                                itemCount: 5,
                                                itemSize: 20,
                                                itemBuilder: (context, _)=>Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFB800),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text("I will always come back to him", style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16.sp
                                          ),),
                                          SizedBox(height: 5.h,),
                                        ],
                                      )

                                    ],
                                  ),
                                  SizedBox(height: 20.h,),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 40.r,
                                        child: Image.asset(
                                          'assets/images/reviewer3.png',
                                          width: 127.w,
                                          height: 127.h,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      SizedBox(width: 30.w,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Tom", style: GoogleFonts.lora(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.sp,
                                              ),),
                                              SizedBox(width: 95.w,),
                                              Text("15/05/23", style: GoogleFonts.lora(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400
                                              ),)
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("4.5", style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16.sp
                                              ),),
                                              SizedBox(width: 5.w,),
                                              RatingBar.builder(
                                                initialRating: 4.5,
                                                onRatingUpdate: (value){},
                                                direction: Axis.horizontal,
                                                itemCount: 5,
                                                itemSize: 20,
                                                itemBuilder: (context, _)=>Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFB800),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text("He is good at what he does!", style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16.sp
                                          ),),
                                          SizedBox(height: 5.h,),
                                        ],
                                      )

                                    ],
                                  ),
                                  SizedBox(height: 80.h,),
                                  // Padding(
                                  //   padding:  EdgeInsets.symmetric(horizontal: 10.w),
                                  //   child: Container(
                                  //       height: 50.h,
                                  //       width: 358.w,
                                  //       decoration: BoxDecoration(
                                  //         color: MyColors.primaryColor,
                                  //         borderRadius: BorderRadius.circular(10.r),
                                  //       ),
                                  //       child: TextButton(
                                  //         child: Text("Book Barber", style:GoogleFonts.lora(
                                  //           fontWeight: FontWeight.w600,
                                  //           fontSize: 16.sp,
                                  //           color: Colors.white,
                                  //         ),),
                                  //         onPressed: (){
                                  //           Navigator.push(context, MaterialPageRoute(builder: (context){
                                  //             return DateAndTimeScreen();
                                  //           }));
                                  //         },
                                  //       )
                                  //   ),
                                  // ),
                                  // SizedBox(height: 20.h,),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20.h,),
                                  Text("Mill Heights, Portola Dr\n150 Hills Street", style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.sp
                                  ),),
                                  SizedBox(height: 15.h,),
                                  Container(
                                    height: 300.h,
                                      width: 355.w,
                                      child: Image.asset('assets/images/map_image.png', fit: BoxFit.cover)),
                                  SizedBox(height: 20.h,),
                                  // Container(
                                  //   height: 50.h,
                                  //   width: 358.w,
                                  //   child: Image.asset(
                                  //     'assets/images/Frame41.png',
                                  //     fit: BoxFit.fill,
                                  //   ),
                                  // ),
                                  // SizedBox(height: 20.h,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.w),
                        child: Container(
                            height: 50.h,
                            width: 358.w,
                            decoration: BoxDecoration(
                              color: MyColors.primaryColor,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: TextButton(
                              child: Text("Book Barber", style:GoogleFonts.lora(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                color: Colors.white,
                              ),),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return DateAndTimeScreen();
                                }));
                              },
                            )
                        ),
                      ),
                      SizedBox(height: 20.h,),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
