import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/pages/select_services_page.dart';
import 'package:hair_haven/presentation/widgets/reviewer_widget.dart';
class SalonPage extends StatefulWidget {
  final String SalonName;
  final String SalonAddress;
  final String SalonImg;
  final String SalonRating;
  final String SalonDistance;
  const SalonPage({Key? key, required this.SalonName, required this.SalonAddress, required this.SalonDistance, required this.SalonImg, required this.SalonRating}):super(key: key);

  @override
  State<SalonPage> createState() => _SalonPageState();
}

class _SalonPageState extends State<SalonPage> {

  @override
  Widget build(BuildContext context) {

    List<String> titles = [
      'Hair & Style',
      'Skin Care',
      'Straightening',
      'Healthy Hair Spa',
      'Hair Color',
    ];
    int selectedTileIndex = -1;
    List<Widget Function()> contentBuilders = [
          () => Column(
        children: [
          Container(
            height: 1,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.grey.withOpacity(0.5),
          ),
          Container(
            height: 100.h,
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hair Cut with Blow Dry', style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp
                      ),),
                      SizedBox(height: 5.h,),
                      Text("Established in the year 2009, The Roose Parlour & Spa is a popular.",
                      style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400
                      ),),
                      SizedBox(height: 5.h,),
                      Text("\$65", style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                      ),),

                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 81.h,
                      width: 76.w,
                      child: Image.asset('assets/images/hair_cut_and_blow.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 50.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 8.w,),
                            Container(
                              height: 20.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.r)
                              ),
                              child: TextButton(
                                onPressed: () {  },
                                child: Text("ADD", style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                  color: Colors.black
                                ),),
                               )
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 1,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.grey.withOpacity(0.5),
          ),
          Container(
            height: 100.h,
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hair Cut with Blow Dry', style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp
                      ),),
                      SizedBox(height: 5.h,),
                      Text("Established in the year 2009, The Roose Parlour & Spa is a popular.",
                        style: GoogleFonts.lato(
                            color: Colors.grey,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400
                        ),),
                      SizedBox(height: 5.h,),
                      Text("\$65", style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                      ),),

                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 81.h,
                      width: 76.w,
                      child: Image.asset('assets/images/hair_cut_and_blow.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 50.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 8.w,),
                            Container(
                                height: 20.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.r)
                                ),
                                child: TextButton(
                                  onPressed: () {  },
                                  child: Text("ADD", style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 9.sp,
                                      color: Colors.black
                                  ),),
                                )
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
          () => Column(
        children: [
          Text('Content for Item 2'),
        ],
      ),
          () => Container(
            child: Text("Content of itme 3"),
      ),
          () => Container(
            child: Text("Content of itme 4"),
      ),
          () => Container(
            child: Text("Content of itme 5"),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.SalonName, style: GoogleFonts.lora(
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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SelectServicesPage();
                }));
              },
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
              child: Image.asset(widget.SalonImg, fit: BoxFit.cover,),
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                SizedBox(width: 15.w,),
                Expanded(
                  child: Text(widget.SalonName, style: GoogleFonts.lora(
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
                  child: Text(widget.SalonAddress, style: GoogleFonts.roboto(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                  ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(width: 10.w,),
                Text(widget.SalonDistance, style: GoogleFonts.lora(
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
              color: Colors.grey.withOpacity(0.2),
            ),
            SizedBox(height: 20.h,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 30.w,),
                  Container(
                    height:38.h,
                    width: 132.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/Discount.png',
                            height: 12.h,
                            width: 12.w, fit: BoxFit.cover,),
                            SizedBox(width: 5.w,),
                            Image.asset('assets/images/off_percent.png',
                            fit: BoxFit.cover,
                              height: 11.h,
                            )
                          ],
                        ),
                        SizedBox(height: 3.h,),
                        Image.asset('assets/images/coupon_code.png',
                        fit: BoxFit.cover,
                        height: 8.h,)
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Container(
                    height:38.h,
                    width: 132.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/Discount.png',
                              height: 12.h,
                              width: 12.w, fit: BoxFit.cover,),
                            SizedBox(width: 5.w,),
                            Image.asset('assets/images/off_percent.png',
                              fit: BoxFit.cover,
                              height: 11.h,
                            )
                          ],
                        ),
                        SizedBox(height: 3.h,),
                        Image.asset('assets/images/coupon_code.png',
                          fit: BoxFit.cover,
                          height: 8.h,)
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Container(
                    height:38.h,
                    width: 132.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/Discount.png',
                              height: 12.h,
                              width: 12.w, fit: BoxFit.cover,),
                            SizedBox(width: 5.w,),
                            Image.asset('assets/images/off_percent.png',
                              fit: BoxFit.cover,
                              height: 11.h,
                            )
                          ],
                        ),
                        SizedBox(height: 3.h,),
                        Image.asset('assets/images/coupon_code.png',
                          fit: BoxFit.cover,
                          height: 8.h,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              height: 1.5,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.grey.withOpacity(0.2),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: DefaultTabController(
                initialIndex: 1,
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.black,
                          labelStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp
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
                        width: MediaQuery.of(context).size.width,
                        child: TabBarView(
                          children: [
                            ListView.builder(
                                itemCount: titles.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ExpansionTile(
                                    title: Text(titles[index], style: GoogleFonts.lato(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: selectedTileIndex == index ? MyColors.primaryColor : Colors.black,
                                      ),
                                    ),
                                    iconColor: MyColors.primaryColor,
                                    onExpansionChanged: (bool isExpanded){
                                      setState(() {
                                        selectedTileIndex = isExpanded ? index : -1;
                                      });
                                    },
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                                        child: contentBuilders[index](),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ListView(
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
