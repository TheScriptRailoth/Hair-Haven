import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  SizedBox(height: 25.h,),
                  SizedBox(
                    height: 130.h,
                    child: PageView.builder(
                        itemBuilder: (context, index){
                          return AspectRatio(
                            aspectRatio: 340/130,
                            child: Container(
                              child: Banners[index],
                            ),
                          );
                        },
                        itemCount: Banners.length,
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Text("What are you looking for?",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500
                  ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 10.h,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
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
                        Container(
                          height:70.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE2F5FA)
                          ),
                          child: Image.asset('assets/images/manicure.png'),
                        ),
                        Container(
                          height:70.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE2F5FA)
                          ),
                          child: Image.asset('assets/images/facial.png'),
                        ),
                        Container(
                          height:70.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE2F5FA)
                          ),
                          child: Image.asset('assets/images/coloring.png'),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
