import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/pages/authentication-screens/login_screen.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<String> Images=[
    'assets/images/splash1.png',
    'assets/images/splash2.png',
    'assets/images/splash3.png',
  ];
  final List<String> Title=[
    'Discover Nearby Beauty Havens',
    'Transforming Hair, Boosting Confidence',
    'Book Online'
  ];
  final List<String> SubTitle=[
    'Unlock the beauty secrets hidden in your neighbourhood',
    'Unlock the beauty secrets hidden in your neighbourhood',
    'Go ahead and book an appointment with us online'
  ];
  @override
  Widget build(BuildContext context) {
    final int currentPage;
    final int pageCount;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 66.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 94.w,
                  height: 30.h,
                  child: Image.asset('assets/main_logo.png'),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: Images.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height:341.h,
                      width: MediaQuery.sizeOf(context).width,
                      child: Center(
                        child: Image.asset(
                          Images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Column(
                        children: [
                          SizedBox(height: 20.h,),
                          Text(Title[index], style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 24.sp
                          ), textAlign: TextAlign.center,),
                          SizedBox(height: 20.h,),
                          Text(SubTitle[index], style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp
                          ), textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          PageIndicator(currentPage: _currentPage, pageCount: 3),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyColors.primaryColor),
                  shape: MaterialStateProperty.all(CircleBorder()),
                ),
                onPressed: () {
                  _currentPage < 2
                      ? _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  )
                      : Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
                child: Icon(Icons.arrow_forward),
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Expanded(
          //       child: Container(
          //         height: 50,
          //         width: 50,
          //         alignment: Alignment.center,
          //         child: PageIndicator(
          //           currentPage: _currentPage,
          //           pageCount: 3,
          //         ),
          //       ),
          //     ),
          //     Container(
          //       alignment: Alignment.centerRight,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //       ),
          //       child: ElevatedButton(
          //         style: ButtonStyle(
          //           backgroundColor: MaterialStateProperty.all(MyColors.primaryColor),
          //           shape: MaterialStateProperty.all(
          //             CircleBorder(),
          //           ),
          //         ),
          //         onPressed: () {
          //           _currentPage < 2 ? _pageController.nextPage(
          //             duration: Duration(milliseconds: 300),
          //             curve: Curves.easeInOut,
          //           ) : Navigator.push(context, MaterialPageRoute(builder: (context) {
          //             return LoginScreen();
          //           }));
          //         },
          //         child: Center(child: Icon(Icons.arrow_forward)),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  const PageIndicator({
    required this.currentPage,
    required this.pageCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageCount,
            (index) => Container(
          width: 8,
          height: 8,
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? MyColors.primaryColor : Colors.grey,
          ),
        ),
      ),
    );
  }
}
