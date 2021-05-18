import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sw_app/controllers/base_controller.dart';


class BottomNavigationBarCustom extends StatelessWidget {

  BaseController baseController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return AnimatedBottomNavigationBar(
        icons: [
          Icons.ac_unit,
          Icons.search_outlined,
          Icons.today_outlined,
          Icons.menu
        ],
        activeIndex: baseController.bottomNavIndex.value,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (index) {
          baseController.bottomNavIndex.value = index;
          baseController.pageController.jumpToPage(baseController.bottomNavIndex.value);
        },
        //other params
      );
    });
  }
}
