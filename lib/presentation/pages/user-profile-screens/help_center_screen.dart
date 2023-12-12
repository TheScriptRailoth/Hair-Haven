import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {

  final List<Map<String, String>> tiles = [
    {'title': 'What is Signature Salon?', 'content': 'Signature is located at Pandra Square, 7VVC+PFH, Rasulgarh, Bhubaneshwar, Odisha 751010, India. It has a 5 star rating on Google Maps'},
    {'title': 'How to see saved salon?', 'content': ''},
    {'title': 'How to check pre-booked salon?', 'content':''},
    {'title': 'How to check transaction?', 'content':''},
    {'title': 'How to add nearby salon?', 'content':''},
    {'title': 'How to add review?', 'content':''},
  ];

  final List<Map<String, String>> tiles2 = [
    {'icon':'assets/icons/apple-logo.png','title': 'Instagram', 'content': ''},
    {'icon':'assets/images/facebook.png','title': 'Facebook', 'content':''},
    {'icon':'assets/icons/phone.png','title': 'Phone Call', 'content':''},
    {'icon':'assets/icons/twitter.png','title': 'Twitter', 'content':''},
    {'icon':'assets/icons/world-wide-web.png','title': 'Website', 'content':''},
    {'icon':'assets/icons/whatsapp.png','title': 'Whatsapp', 'content':''},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Help Center", style: GoogleFonts.roboto(
          fontWeight: FontWeight.w400,
          fontSize: 18.sp,
          color: Colors.black,
        ),),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: MyColors.primaryColor,
        ),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
              child: Container(
                height: 35.h,
                width: 348.w,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 0.5, color: MyColors.primaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10.w,),
                    Icon(CupertinoIcons.search, color: MyColors.primaryColor, size: 22,),
                    SizedBox(width: 10.w,),
                    Container(
                      height: 35.h,
                      width: 230.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          border: InputBorder.none,
                        ),
                        cursorColor: MyColors.primaryColor,
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Icon(CupertinoIcons.mic_fill, color: MyColors.primaryColor,size: 22,)
                  ],
                ),
              )
          ),
          SizedBox(height: 10.h,),
          DefaultTabController(
            length: 2,
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
                  tabs: const [
                    Tab(text: 'FAQs',),
                    Tab(text: 'Contact Us')
                  ],
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height,
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListView(
                          children: List.generate(
                            tiles.length,
                                (index) => Column(
                              children: [
                                Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                      side: const BorderSide(width: 1, color: Colors.grey)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 0.h),
                                    child: _buildExpansionTile(tiles[index]['title'] ?? '', tiles[index]['content'] ?? ''),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListView(
                          children: List.generate(
                            tiles2.length,
                                (index) => Column(
                              children: [
                                Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                      side: const BorderSide(width: 1, color: Colors.grey)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 0.h),
                                    child: _buildContactUsResults(tiles2[index]['title'] ?? '', tiles2[index]['content'] ?? '', tiles2[index]['icon']??''),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildExpansionTile(String title, String content) {
    return ExpansionTile(
      title: Text(title, style: GoogleFonts.roboto(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black
      ),),
      collapsedIconColor: Colors.black,
      iconColor: Colors.black,
      children: <Widget>[
        ListTile(
          title: Text(content),
        ),
      ],
    );
  }

  Widget _buildContactUsResults(String icon, String title, String content) {
    return ExpansionTile(
      leading: Image.asset(icon, width: 12, height: 24,),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w400),),
      children: <Widget>[
        ListTile(
          title: Text(content),
        ),
      ],
    );
  }

}
