import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
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
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value= index,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: ''),
            NavigationDestination(icon: Icon(Icons.search), label: ''),
            NavigationDestination(icon: Icon(Icons.calendar_month), label: ''),
            NavigationDestination(icon: Icon(Icons.notifications_active), label: ''),
            NavigationDestination(icon: Icon(Icons.person), label: ''),
          ],
        ),
      ),
      body: controller.screens[controller.selectedIndex.value],
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex= 0.obs;

  final screens=[HomeScreen(), HomeScreen(), ProfileScreen(), ProfileScreen(), ProfileScreen()];
}
