import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'dart:math' as math;

import '../../widgets/reviewer_widget.dart';
class DetailedUserProfile extends StatefulWidget {

  final String name;
  final String followers;
  final String following;
  final String location;
  DetailedUserProfile({Key? key, required this.name, required this.followers, required this.following, required this.location}) : super(key: key);

  @override
  State<DetailedUserProfile> createState() => _DetailedUserProfileState();
}

class _DetailedUserProfileState extends State<DetailedUserProfile> with SingleTickerProviderStateMixin{

  final List<String> tabs = ['Reviews','Photos'];
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
                  children: [
                    SizedBox(height: 30.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(widget.followers, style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),),
                            Text("Followers", style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff878D98)
                            ),)
                          ],
                        ),
                        SizedBox(width: 20.w,),
                        Container(
                          height: 80.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              border: Border.all(width: 4, color: MyColors.primaryColor)
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  height: 70.h,
                                  width: 78.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.r),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25.r),
                                    child: Image.asset(
                                      'assets/images/premium_salon_bg.png',
                                      fit: BoxFit.cover, // Use BoxFit.cover to fit and maintain the aspect ratio
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 20.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.r),
                                      color: MyColors.primaryColor
                                  ),
                                  child: Center(child: Icon(Icons.add, size: 24, color: Colors.white,)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.following, style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),),
                            Text("Following", style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff878D98)
                            ),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h,),
                    Text(widget.name, style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp
                    ),),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, color: Colors.red, size: 15,),
                        SizedBox(width: 5.w,),
                        Text(widget.location, style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),)
                      ],
                    ),
                    SizedBox(height: 15.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.rotate(
                          angle: -math.pi/2,
                          child: Icon(Icons.edit_outlined, color: Colors.green, size: 15,),
                        ),
                        SizedBox(width: 5.w,),
                        Text('Add Reviews', style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox(width: 20.w,),
                        Icon(Icons.add_circle, color: Colors.green, size: 15,),
                        SizedBox(width: 5.w,),
                        Text('Add Photos', style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),)
                      ],
                    ),
                    SizedBox(height: 20.h), // Adjust as needed
                    DefaultTabController(
                      length: tabs.length,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            child: TabBar(
                              controller: _tabController,
                              tabs: tabs.map((String tab) {
                                return Tab(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      tab,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              labelColor: Colors.white,
                              indicator: BoxDecoration(
                                color: MyColors.primaryColor,
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).height,
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                                  child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: 7,
                                    itemBuilder: (BuildContext context, int index){
                                      return  Column(
                                        children: [
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
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                GridView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 3.w,
                                    mainAxisSpacing: 3.h,
                                  ),
                                  itemCount: 15,
                                  itemBuilder: (BuildContext context, int index) {
                                    if (index == 0) {
                                      // First image takes up 2 rows and 2 columns
                                      return Container(
                                        child: Image.asset(
                                          'assets/images/premium_salon_bg.png',
                                          fit: BoxFit.cover,
                                        ),
                                        width: 2 * MediaQuery.of(context).size.width / 3 - 3 * 2.w,
                                        height: 2 * MediaQuery.of(context).size.height / 3 - 3 * 2.h,
                                      );
                                    } else {
                                      return Container(
                                        child: Image.asset(
                                          'assets/images/premium_salon_bg.png',
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
