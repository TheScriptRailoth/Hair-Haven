import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/pages/payment-screens/total_overview_screen.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../core/theme/mycolors.dart';

class ScheduleAppointmentScreen extends StatefulWidget {
  final Map<int, String> selectedPrice;

  const ScheduleAppointmentScreen({Key? key, required this.selectedPrice}) : super(key: key);

  @override
  State<ScheduleAppointmentScreen> createState() =>
      _ScheduleAppointmentScreenState();
}

class _ScheduleAppointmentScreenState extends State<ScheduleAppointmentScreen> {
  late DateTime _selectedDate;
  late CalendarFormat _calendarFormat;
  late Map<DateTime, List<dynamic>> _events;
  late Map<DateTime, List<dynamic>> _holidays;
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _calendarFormat = CalendarFormat.month;
    _events = {};
    _holidays = {};
    _textController = TextEditingController();
    _updateSelectedDateText(_selectedDate);
  }

  void _updateSelectedDateText(DateTime date) {
    setState(() {
      _textController.text = 'Selected Date: ${date.toString().substring(0, 10)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              focusedDay: _selectedDate,
              firstDay: DateTime(2023),
              lastDay: DateTime(3000),
              calendarFormat: _calendarFormat,
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDate = selectedDay;
                  _updateSelectedDateText(_selectedDate);
                });
              },
            ),
            SizedBox(height: 20),
            Text("Select Time", style: GoogleFonts.lora(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
              fontSize: 22.sp
            ),),
            SizedBox(height: 20.h,),
            Container(
              height: 60.h,
              width: 45.w,
              decoration: BoxDecoration(
                  color: Colors.white,
              ),
              child: Column(
                children: [
                  Text("MON", style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700
                  ),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _textController,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Selected Date',
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.w),
              child: Container(
                height: 45.h,
                width: 300.w,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return TotalOverview(selectedPrice: widget.selectedPrice,);
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
