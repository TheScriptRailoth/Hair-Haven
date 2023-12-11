import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/pages/salon_page.dart';
import 'package:hair_haven/presentation/widgets/search_result_widget.dart';

import '../../../core/theme/mycolors.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
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
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      Icon(CupertinoIcons.mic_fill, color: MyColors.primaryColor,size: 22,)
                    ],
                  ),
                )
              ),
              SizedBox(height: 20.h,),
              SearchResultWidget(
                  title: "Healing Power Spa",
                  distance: "2KM",
                  rating: "4.5",
                  location: "6391 Elgin St. Celina, Delaware",
                  image: "assets/images/spa_image.png"),
              SizedBox(height: 20.h,),
              SearchResultWidget(
                  title: "Flip Side Hair Salon",
                  distance: "2KM",
                  rating: "4.5",
                  location: "6391 Elgin St. Celina, Delaware",
                  image: "assets/images/salon_image.png"),
              SizedBox(height: 20.h,),
              SearchResultWidget(
                  title: "Twisted Starlets Hair Salon",
                  distance: "2KM",
                  rating: "4.5",
                  location: "6391 Elgin St. Celina, Delaware",
                  image: 'assets/images/hair_salon_image.png'),
              SizedBox(height: 20.h,),
              SearchResultWidget(
                  title:"Hot Spot SALON and Spa",
                  distance: "2KM",
                  rating: "4.5",
                  location: "6391 Elgin St. Celina, Delaware",
                  image: 'assets/images/hot_spot_image.png'),
              SizedBox(height: 20.h,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SalonPage();
                  }));
                },
                child: SearchResultWidget(
                    title: "Premium Salon",
                    distance: "5KM",
                    rating: "4.5",
                    location: "6391 Elgin St. Celina, Delaware",
                    image:'assets/images/premium_salon.png'),
              ),
              SizedBox(height: 20.h,),
              SearchResultWidget(
                  title: "Twisted Starlets Hair Salon",
                  distance: "2KM",
                  rating: "4.5",
                  location: "6391 Elgin St. Celina, Delaware",
                  image: 'assets/images/twisted_salon_image.png'),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}
