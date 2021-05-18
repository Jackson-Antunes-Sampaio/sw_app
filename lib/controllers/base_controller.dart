

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BaseController extends GetxController{
  RxInt bottomNavIndex = 4.obs;
  PageController pageController = PageController(initialPage: 4);


}