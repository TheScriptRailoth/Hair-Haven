import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/pages/user-profile-screens/detailed_user_profile.dart';
class EditProfileScreen extends StatefulWidget {
  final String userName;
  final String img;
  EditProfileScreen({Key? key, required this.img, required this.userName }) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    String email="swagatikap@gmail.com";
    String mobNo="987889999";
    String? selectedGender='Female';
    List<String> genders = ['Male', 'Female', 'Other'];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Edit Profile", style: GoogleFonts.roboto(
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          color: MyColors.primaryColor
        ),),
        iconTheme: IconThemeData(
          color: MyColors.primaryColor
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 100.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 4, color: MyColors.primaryColor)
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 90.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.r),
                              child: Image.asset(
                                widget.img,
                                fit: BoxFit.cover, // Use BoxFit.cover to fit and maintain the aspect ratio
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 30.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColors.primaryColor
                            ),
                            child: Center(child: Icon(Icons.camera_alt, size: 16.dm, color: Colors.white,)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Text("Change Profile", style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight:FontWeight.w400,
                ), ),
                SizedBox(height: 30.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name', style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),),
                      SizedBox(height: 5.h,),
                      Container(
                        height: 42.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Color(0xffA9A9A9))
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                          child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp
                            ),
                            onChanged: (value){},
                            initialValue: widget.userName,
                            cursorColor: MyColors.primaryColor,
                            cursorRadius: Radius.circular(10.r),
                          ),
                        ),
                      ),

                      SizedBox(height: 15.h,),
                      Text('Email Id', style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),),
                      SizedBox(height: 5.h,),
                      Container(
                        height: 42.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: Color(0xffA9A9A9))
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                            ),
                            onChanged: (value) {},
                            initialValue: email,
                            cursorRadius: Radius.circular(10.r),
                            cursorColor: MyColors.primaryColor,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter an email';
                              }
                              if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          )
                        ),
                      ),

                      SizedBox(height: 15.h,),
                      Text('Phone Number', style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),),
                      SizedBox(height: 5.h,),
                      Container(
                        height: 42.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Color(0xffA9A9A9)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40.w,
                              child: Center(
                                child: Text(
                                  "+91",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(10),
                                ],
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                ),
                                onChanged: (value) {},
                                cursorColor: MyColors.primaryColor,
                                initialValue: mobNo,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: InkWell(
                                onTap: (){},
                                child: Text('Change', style: GoogleFonts.roboto(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: MyColors.primaryColor
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 15.h,),
                      Text('Gender', style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),),
                      SizedBox(height: 5.h,),
                      Container(
                        height: 42.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Color(0xffA9A9A9)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: DropdownButtonFormField(
                            items: genders.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),                               );
                            }).toList(),
                            value: selectedGender,
                            onChanged: (String? newValue){
                              setState(() {
                                selectedGender=newValue!;
                              });
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80.h,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.w),
                    child: Container(
                      height: 45.h,
                      width: 300.w,
                      child: ElevatedButton(onPressed: (){
                        final snackBar = SnackBar(
                          content: Text('Updated Profile', style: TextStyle(color: Colors.black),),
                          duration: Duration(seconds: 2),
                          backgroundColor: Colors.white,
                          behavior: SnackBarBehavior.floating,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }, child: Text(
                        "Update", style: GoogleFonts.lato(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      ),
                      ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(MyColors.primaryColor)
                        ),),
                    ),
                  ),
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}
