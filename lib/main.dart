import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sw_app/controllers/monsters_controller.dart';
import 'package:sw_app/routes/app_page.dart';
import 'package:sw_app/screens/games/games_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  MonstersController monstersController = Get.put(MonstersController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.grey[300]
      ),
      home: GamesScreen(),
      initialRoute: AppPage.INITIAL,
      //initialBinding: AppBindings(),
      getPages: AppPage.routes,
    );
  }
}
