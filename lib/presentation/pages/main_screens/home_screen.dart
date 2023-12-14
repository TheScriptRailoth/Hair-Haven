import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/widgets/available_barber_widget.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> Banners=[
    Image.asset('assets/images/banner.png', fit: BoxFit.contain,),
    Image.asset('assets/images/banner.png', fit: BoxFit.contain,),
    Image.asset('assets/images/banner.png', fit: BoxFit.contain,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: GNav(
      //     rippleColor: MyColors.primaryColor, // tab button ripple color when pressed
      //     hoverColor: MyColors.primaryColor.withOpacity(0.5), // tab button hover color
      //     haptic: true, // haptic feedback
      //     tabBorderRadius: 15,
      //     tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
      //     tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
      //     tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
      //     curve: Curves.easeOutExpo, // tab animation curves
      //     duration: Duration(milliseconds: 900), // tab animation duration
      //     gap: 8, // the tab button gap between icon and text
      //     color: Colors.grey[800], // unselected icon color
      //     activeColor: Colors.purple, // selected icon and text color
      //     iconSize: 24, // tab button icon size
      //     tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
      //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
      //     tabs: [
      //       GButton(
      //         icon: CupertinoIcons.home,
      //       ),
      //       GButton(
      //         icon: CupertinoIcons.search,
      //       ),
      //       GButton(
      //         icon: CupertinoIcons.calendar,
      //         text: 'Search',
      //       ),
      //       GButton(
      //         icon: CupertinoIcons.bell
      //       ),
      //       GButton(
      //         icon: CupertinoIcons.person
      //       ),
      //     ]
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Hello, Swagatika", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp
                          ),),
                          Text("Find the service you want", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: const Color(0xff000000)
                          ),),
                        ],
                      ),
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
                              child: Icon(CupertinoIcons.search, color: Colors.white, size: 22,)
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:10),
                  child: SizedBox(
                    height: 130.h,
                    child: PageView.builder(
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: AspectRatio(
                              aspectRatio: 340/130,
                              child: Container(
                                child: Banners[index],
                              ),
                            ),
                          );
                        },
                        itemCount: Banners.length,
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text("What are you looking for?",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500
                  ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 10.h,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 20.h,),
                      Column(
                        children: [
                          Container(
                            height:70.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffE2F5FA)
                            ),
                            child: Image.asset('assets/images/haircut.png'),
                          ),
                          Text("Haircut", style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400
                          ),)
                        ],
                      ),
                      SizedBox(width: 20.h,),
                      Column(
                        children: [
                          Container(
                            height:70.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffE2F5FA)
                            ),
                            child: Image.asset('assets/images/manicure.png'),
                          ),
                          Text("Nails", style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400
                          ),)
                        ],
                      ),
                      SizedBox(width: 20.h,),
                      Column(
                        children: [
                          Container(
                            height:70.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffE2F5FA)
                            ),
                            child: Image.asset('assets/images/facial.png'),
                          ),
                          Text("Facial", style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400
                          ),)
                        ],
                      ),
                      SizedBox(width: 20.h,),
                      Column(
                        children: [
                          Container(
                            height:70.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffE2F5FA)
                            ),
                            child: Image.asset('assets/images/coloring.png'),
                          ),
                          Text("Coloring", style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400
                          ),)
                        ],
                      ),
                      SizedBox(width: 20.h,)

                    ],
                  ),
                ),
                SizedBox(height: 30.h,),
                Center(
                  child: TextButton(onPressed: (){},
                      child: Text("All Services", style: TextStyle( fontWeight: FontWeight.w500, fontSize: 16.sp, color: Colors.black),),

                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      minimumSize: Size(250, 40)
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Barbers Available",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 20.h,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 20.h,),
                      AvailableBarberWidget(img: 'assets/images/barber1.png', name: "Robert Fox"),
                      SizedBox(width: 20.h,),
                      AvailableBarberWidget(img: 'assets/images/barber2.png', name: "Jacob Jones"),
                      SizedBox(width: 20.h,),
                      AvailableBarberWidget(img: 'assets/images/barber3.png', name: "Albert Flores"),
                      SizedBox(width: 20.h,),
                      AvailableBarberWidget(img: 'assets/images/barber4.png', name: "Ralph Jones"),
                      SizedBox(width: 20.h,),
                      AvailableBarberWidget(img: 'assets/images/barber1.png', name: "Ralph Jones"),
                      SizedBox(width: 20.h,)
                    ],
                  ),
                ),
                SizedBox(height: 30.h,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 85.h,
                    width: 358.w,
                    child: Image.asset(
                        'assets/images/Offer.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 30.h,)
              ],
            ),
          ),
      ),
    );
  }
}
