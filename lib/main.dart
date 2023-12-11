import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/pages/payment-screens/digital_payment_screen.dart';
import 'package:hair_haven/presentation/pages/payment-screens/test.dart';
import 'package:hair_haven/presentation/pages/barber_profile_screen.dart';
import 'package:hair_haven/presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360,690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
          theme: ThemeData(
            buttonTheme: ButtonThemeData(
              splashColor: MyColors.primaryColor.withOpacity(0.1),
            ),
            textTheme: GoogleFonts.robotoTextTheme(
              Theme.of(context).textTheme,
            )
          ),
        );
      },
      child: SplashScreen()
    );
  }
}
