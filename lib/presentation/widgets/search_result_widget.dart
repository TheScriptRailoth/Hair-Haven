import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/pages/user-profile-screens/saved_screen.dart';

class SearchResultWidget extends StatefulWidget {
  final String title;
  final String distance;
  final String rating;
  final String location;
  final String image;
  const SearchResultWidget({Key? key,
    required this.title,
    required this.distance,
    required this.rating,
    required this.location,
    required this.image,
  }):super(key: key);

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  bool isSaved=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        children: [
          Flexible(
            child: Container(
              height: 85.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 0.5, color: Color(0xff979797)),
              ),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 5),
                  Container(
                    height: 86.79,
                    width: 79,
                    child: Image.asset(widget.image, fit: BoxFit.contain),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                widget.title,
                                style: GoogleFonts.lora(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/route_icon.png'),
                            SizedBox(width: 5),
                            Text(
                              widget.distance,
                              style: GoogleFonts.lora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff585656),
                              ),
                            ),
                            SizedBox(width: 15),
                            Icon(
                              CupertinoIcons.star_fill,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              widget.rating,
                              style: GoogleFonts.lora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff585656),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 15,
                              color: Color(0xff585656),
                            ),
                            SizedBox(width: 5),
                            Text(
                              widget.location,
                              style: GoogleFonts.lora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff585656),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w,)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(
                CupertinoIcons.heart_fill,
                color: isSaved?Colors.red:Colors.grey.withOpacity(0.5),
                size: 20,
              ), onPressed: () {
              setState(() {
                isSaved=!isSaved;
                if(isSaved){
                  SavedItemsManager.addToSavedList(widget.title, widget.distance, widget.rating, widget.location, widget.image);
                }else{
                  SavedItemsManager.removeFromSavedList(widget.title, widget.distance, widget.rating, widget.location, widget.image);
                }
              });
            },
            ),
          ),
        ],
      ),
    );
  }
}

class SavedItemsManager {
  static List<Map<String, String>> savedItems = [];

  static void addToSavedList(String title, String distance, String rating, String location, String image) {
    savedItems.add({
      'title': title,
      'distance': distance,
      'rating': rating,
      'location': location,
      'image': image,
    });
  }

  static void removeFromSavedList(String title, String distance, String rating, String location, String image) {
    savedItems.removeWhere((item) =>
    item['title'] == title &&
        item['distance'] == distance &&
        item['rating'] == rating &&
        item['location'] == location &&
        item['image'] == image);
  }

  static List<Map<String, String>> getSavedItems() {
    return savedItems;
  }
}


