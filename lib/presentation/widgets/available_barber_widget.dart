import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_haven/presentation/pages/barber_profile_screen.dart';
class AvailableBarberWidget extends StatefulWidget {

  final String img;
  final String name;
  const AvailableBarberWidget({Key?key, required this.img, required this.name}):super(key: key);

  @override
  State<AvailableBarberWidget> createState() => _AvailableBarberWidgetState();
}

class _AvailableBarberWidgetState extends State<AvailableBarberWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return BarberProfileScreen(
              name: widget.name,
              img: widget.img,
              experience: "Professional Barber");
        }));
      },
      child: Column(
        children: [
          Container(
            height:60.h,
            width: 60.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffE2F5FA)
            ),
            child: Image.asset(widget.img),
          ),
          SizedBox(height: 5.h),
          Text(widget.name, style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400
          ),)
        ],
      ),
    );
  }
}
