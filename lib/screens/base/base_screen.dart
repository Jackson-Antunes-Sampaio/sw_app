import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sw_app/components/bottom_navigation_bar.dart';
import 'package:sw_app/controllers/base_controller.dart';
import 'package:sw_app/screens/home/home_screen.dart';
import 'package:sw_app/screens/search/search_screen.dart';

class BaseScreen extends StatelessWidget {

  BaseController baseController = Get.put(BaseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: baseController.pageController,
        physics: ScrollPhysics(),
        children: [
          Container(
            color: Colors.grey[300],
            child: Text("aaaa", style: TextStyle(color: Colors.red),),
          ),
          SearchScreen(),
          Container(
            color: Colors.grey[300],
          ),
          Container(
            color: Colors.grey[300],
          ),
          HomeScreen()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: (){
          baseController.bottomNavIndex.value = 4;
          baseController.pageController.jumpToPage(baseController.bottomNavIndex.value);
        },
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBarCustom(),
    );
  }
}
