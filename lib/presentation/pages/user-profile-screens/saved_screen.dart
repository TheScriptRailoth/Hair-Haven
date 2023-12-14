import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/widgets/search_result_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/theme/mycolors.dart';
class SavedScreen extends StatefulWidget {
  const SavedScreen({Key?key,}):super(key: key);

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Saved", style: GoogleFonts.lora(
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
      ),
      body: SavedItemsManager.savedItems.isEmpty?
        Center(
        child: Text("No saved items yet."),
      ): ListView.separated(
          itemCount: SavedItemsManager.savedItems.length,
          scrollDirection: Axis.vertical,
          separatorBuilder: (BuildContext context, int index)=>SizedBox(height: 10.h),
          itemBuilder: (context, index){
            return SearchResultWidget(
                title: SavedItemsManager.savedItems[index]['title']??'',
                distance: SavedItemsManager.savedItems[index]['distance']??'',
                rating: SavedItemsManager.savedItems[index]['rating']??'',
                location: SavedItemsManager.savedItems[index]['location']??'',
                image: SavedItemsManager.savedItems[index]['image']??'');
          },
      )
    );
  }
}
