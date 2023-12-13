import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/widgets/chat_message_widget.dart';

import '../../../core/theme/mycolors.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Inbox", style: GoogleFonts.lora(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: MyColors.primaryColor
        ),
        actions: [
          IconButton(
            onPressed: () {  },
            icon:Icon(Icons.more_vert_rounded, color: MyColors.primaryColor),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
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
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  ChatMessageWidget(
                      userName: 'Pattrick Wand',
                      msg: 'Come now mate! It\'\ s time for the game',
                      profileImg: 'assets/chat-profiles/chat1_profile.png',
                      time: '12:31PM',
                      isUnread: true
                  ),
                  ChatMessageWidget(
                      userName: 'Marcus Horizon',
                      msg: 'Thank you for your visit!',
                      profileImg: 'assets/chat-profiles/chat2_profile.png',
                      time: '10:25PM',
                      isUnread: true
                  ),
                  ChatMessageWidget(
                      userName: 'Edward Cullen',
                      msg: 'Great! Thanks man!',
                      profileImg: 'assets/chat-profiles/chat3_profile.png',
                      time: '1:09PM',
                      isUnread: true
                  ),
                  ChatMessageWidget(
                      userName: 'Steve Bradl',
                      msg: 'Come now mate! It\'\ s time for the game',
                      profileImg: 'assets/chat-profiles/chat4_profile.png',
                      time: '11:00PM',
                      isUnread: true
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
