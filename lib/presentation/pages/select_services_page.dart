import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/pages/schedule_appointment_page.dart';
class SelectServicesPage extends StatefulWidget {
  const SelectServicesPage({super.key});

  @override
  State<SelectServicesPage> createState() => _SelectServicesPageState();
}

class _SelectServicesPageState extends State<SelectServicesPage> {
  String selectedValue = '';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100.h,
              width: MediaQuery.sizeOf(context).width,
              color: MyColors.primaryColor,
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Facial", style: GoogleFonts.lato(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ),),
                        SizedBox(height: 10.h,),
                        Text("Please select any one products", style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: Colors.white
                        ),),
                      ],
                    ),
                    Container(
                      height: 25.h,
                      width: 86.w,
                      color: Colors.white,
                      child: Center(
                        child: Text("REQUIRED", style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.w),
              child: Container(
                height: 45.h,
                width: 300.w,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ScheduleAppointmentScreen();
                  }));
                }, child: Text(
                  "Continue", style: GoogleFonts.lato(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyColors.primaryColor)
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
