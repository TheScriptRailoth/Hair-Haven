import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/mycolors.dart';
import 'home_screen.dart';
class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            SizedBox(height: 50.h,),
            Stack(
              children: [
                SizedBox(
                  height: 388.h,
                  width: MediaQuery.sizeOf(context).width,
                  child: Image.asset('assets/images/location_access.png'),
                ),
                Column(
                  children: [
                    SizedBox(height: 70.h,),
                    Center(
                      child: SizedBox(
                        height: 250.h,
                        width: MediaQuery.sizeOf(context).width*0.6,
                        child: Image.asset('assets/images/location_char.png'),
                      ),
                    ),
                    SizedBox(height:10.h),
                    Text("What is your Location?", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp
                    ),),
                    SizedBox(height: 10.sp,),
                    Text("We need to know your location in order to suggest \nnearby services",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ), 
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return const HomeScreen();
                    })
                );
              },
                style: TextButton.styleFrom(
                  backgroundColor: MyColors.primaryColor,
                  minimumSize: Size(321.w, 40.h),
                  padding: EdgeInsets.zero, // Remove padding to adjust button size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0), // Adjust border radius as needed
                  ),
                ),
                child: Text(
                  "Allow Location Access",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Text("Enter Location manually", style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18.sp,
              color: MyColors.primaryColor
            ),
              textAlign: TextAlign.center,
            )

          ],
        ),
    );
  }
}
