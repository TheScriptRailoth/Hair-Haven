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
  Map<int, String> selectedOptions = {};
  String selectedValue = '';
  var selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    buildOption('VLCC', '\$150', 1),
                    buildOption('Shahnaz Hussain', '\$185', 2),
                    buildOption('Lotus', '\$135', 3),
                    buildOption('Aroma', '\$155', 4),
                    buildOption('TONY MOLY', '\$195', 5),
                  ],
                ),
            ),
            Spacer(),
            ...(selectedOptions.isNotEmpty
            ? [Padding(
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
            )]:[]),
          ],
        ),
      ),
    );
  }
  Widget buildOption(String title, String price, int value) {
    bool isSelected = selectedOptions.containsKey(value);
    return TextButton(
      onPressed: () {
        setState(() {
          if (isSelected) {
            selectedOptions.remove(value); // Remove if already selected
          } else {
            selectedOptions[value] = price; // Add to map with price
          }
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              Text(
                price,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              Checkbox(
                value: isSelected,
                onChanged: (bool? checked) {
                  setState(() {
                    if (checked != null) {
                      if (checked) {
                        selectedOptions[value] = price; // Add to map with price
                      } else {
                        selectedOptions.remove(value); // Remove from map
                      }
                    }
                  });
                },
                shape: CircleBorder(),
                activeColor: MyColors.primaryColor,
              ),
            ],
          ),
        ],
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return MyColors.primaryColor.withOpacity(0.1);
            }
            return Colors.grey.withOpacity(0.1);
          },
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}
