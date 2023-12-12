import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: MyColors.primaryColor
        ),
        title: Text(
          "Privacy Policy",
          style: GoogleFonts.lora(
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
            color: Colors.black
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("1. Types data we collect", style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),),
              SizedBox(height: 20.h,),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20.h,),
                    Text("Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.",
                    overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20.h,),
                  ],
                ),
              ),
              Text("2. Use of your personal data", style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ), textAlign: TextAlign.left,),
              SizedBox(height: 20.h,),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20.h,),
                    Text("Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20.h,),
                  ],
                ),
              ),
              Text("3. Disclosure of your personal data", style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ), textAlign: TextAlign.left,),
              SizedBox(height: 20.h,),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text("At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. ",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20.h,),
                    Text("Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20.h,),
                    Text("At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. ",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20.h,)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
