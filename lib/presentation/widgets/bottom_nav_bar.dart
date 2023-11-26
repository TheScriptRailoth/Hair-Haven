import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hair_haven/core/theme/mycolors.dart';
import 'package:hair_haven/presentation/pages/home_screen.dart';
import 'package:hair_haven/presentation/pages/profile_screen.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    
    final controller= Get.put(NavigationController());
    
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          elevation: 0.0,
          height: 50.h,
          backgroundColor: Color(0xffEEEDED),
          indicatorColor: MyColors.primaryColor.withOpacity(0.15),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value= index,
          destinations: [
            NavigationDestination(icon: controller.selectedIndex.value==0?Icon(CupertinoIcons.home, color: MyColors.primaryColor,):Icon(CupertinoIcons.home), label: '',),
            NavigationDestination(icon: controller.selectedIndex.value==1?Icon(CupertinoIcons.search, color: MyColors.primaryColor,):Icon(CupertinoIcons.search), label: ''),
            NavigationDestination(icon: controller.selectedIndex.value==2?Icon(CupertinoIcons.calendar,color: MyColors.primaryColor,):Icon(CupertinoIcons.calendar), label: ''),
            NavigationDestination(icon: controller.selectedIndex.value==3?Icon(CupertinoIcons.bell,color: MyColors.primaryColor,):Icon(CupertinoIcons.bell), label: ''),
            NavigationDestination(icon: controller.selectedIndex.value==4?Icon(CupertinoIcons.person,color: MyColors.primaryColor,):Icon(CupertinoIcons.person), label: ''),
          ],
        ),
      ),
      body: Obx(()=>controller.screens[controller.selectedIndex.value]),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex= 0.obs;

  final screens=[HomeScreen(), HomeScreen(), ProfileScreen(), ProfileScreen(), ProfileScreen()];
}
