import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/pages/payment-screens/total_overview_screen.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/theme/mycolors.dart';

class ScheduleAppointmentScreen extends StatefulWidget {
  final Map<int, String> selectedPrice;

  const ScheduleAppointmentScreen({Key? key, required this.selectedPrice}) : super(key: key);

  @override
  State<ScheduleAppointmentScreen> createState() =>
      _ScheduleAppointmentScreenState();
}

class _ScheduleAppointmentScreenState extends State<ScheduleAppointmentScreen> {
  List<String> timeOptions = [
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '1:00 PM',
    '2:00 PM',
    '3:00 PM',
    '4:00 PM',
    '5:00 PM',
    '6:00 PM',
    '7:00 PM',
    '8:00 PM',
  ];
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  late TextEditingController _HourController;
  late TextEditingController _MinuteController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _HourController=TextEditingController(text: DateTime.now().hour.toString());
    _MinuteController=TextEditingController(text: DateTime.now().minute.toString());

    Timer.periodic(Duration(minutes: 1), (Timer timer) {
      _MinuteController.text = DateTime.now().minute.toString().padLeft(2, '0');
    });

  }
  @override
  void dispose() {
    _HourController.dispose();
    _MinuteController.dispose();
    super.dispose();
  }
  
  String selectedMonth(String mon)
  {
      if(mon=='1'){
        return 'JAN';
      }
      if(mon=='2'){
        return 'FEB';
      }
      if(mon=='3'){
        return 'MAR';
      }
      if(mon=='4'){
        return 'APR';
      }
      if(mon=='5'){
        return 'MAY';
      }
      if(mon=='6'){
        return 'JUN';
      }
      if(mon=='7'){
        return 'JUL';
      }
      if(mon=='8'){
        return 'AUG';
      }
      if(mon=='9'){
        return 'SEP';
      }
      if(mon=='10'){
        return 'OCT';
      }
      if(mon=='11'){
        return 'NOV';
      }
      if(mon=='12'){
        return 'DEC';
      }
      return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        iconTheme: IconThemeData(color: MyColors.primaryColor),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Schedule Appointment",
          style: GoogleFonts.lora(
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(15.r),
                child: Container(
                  height: 350.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Color(0xffFFFFFF),
                  ),
                  child: TableCalendar(
                    locale: 'en_US',
                    firstDay: DateTime.utc(2021, 1, 1),
                    lastDay: DateTime.utc(2030, 12, 31),
                    focusedDay: _focusedDay,
                    calendarFormat: _calendarFormat,
                    daysOfWeekHeight: 33.h,
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                      headerPadding: EdgeInsets.symmetric(vertical: 5),
                      formatButtonDecoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      titleTextStyle:GoogleFonts.lora(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: MyColors.primaryColor
                      ),
                    ),
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp
                      ),
                      weekendStyle: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffC4C4C4),
                      ),
                    ),
                    calendarStyle: CalendarStyle(
                      selectedDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                      ),
                      todayDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black.withOpacity(0.5)
                      ),
                    ),
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    },
                    onFormatChanged: (format) {
                      setState(() {
                        _calendarFormat = format;
                      });
                    },
                    onPageChanged: (focusedDay) {
                      _focusedDay = focusedDay;
                    },
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 20),
                Text("Select Time", style: GoogleFonts.lora(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  fontSize: 22.sp
                ),),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Material(
                      elevation: 0.5,
                      child: Container(
                          height: 58.h,
                          width: 45.h,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(_selectedDay!=null?selectedMonth(_selectedDay!.month.toString()):selectedMonth(DateTime.now().month.toString()),
                                style: GoogleFonts.roboto(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700
                                ),),
                              Text( _selectedDay!=null?_selectedDay!.day.toString(): DateTime.now().day.toString(), style: GoogleFonts.roboto(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w700
                              ),),
                            ],
                          ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      height: 32.h,
                      width: 1.5,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10.w,),
                    Material(
                      elevation: 0.5,
                      child: Container(
                        height: 58.h,
                        width: 45.h,
                        color: Colors.white,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            FilteringTextInputFormatter.allow(RegExp(r'^[0-9]{0,2}$')),
                          ],
                          controller: _HourController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                          cursorColor: MyColors.primaryColor,
                          // initialValue: DateTime.now().hour.toString(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 43.sp,
                            color: Colors.black,
                          ),
                          onChanged: (value){
                            if(value.isNotEmpty){
                              final intValue=int.parse(value);
                              if(intValue>24){
                                _HourController.clear();
                              }
                            }
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      height: 32.h,
                      width: 10.w,
                      child: Text(":", style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 43.sp,
                        color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Material(
                      elevation: 0.5,
                      child: Container(
                        height: 58.h,
                        width: 70.h,
                        color: Colors.white,
                        child: TextFormField(
                          controller: _MinuteController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'^[0-9]{0,2}$'))
                          ],
                          cursorColor: MyColors.primaryColor,
                          // initialValue: DateTime.now().hour.toString(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 43.sp,
                            color: Colors.black,
                          ),
                          onChanged: (value){
                            int intValue= int.parse(value);
                            if(intValue>60){
                              _MinuteController.clear();
                            }
                          },
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),

                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 60.h),
                  child: Container(
                    height: 45.h,
                    width: 300.w,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return TotalOverview(selectedPrice: widget.selectedPrice,);
                      }));
                    }, child: Text(
                      "Fix Schedule", style: GoogleFonts.lato(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
