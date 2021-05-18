import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sw_app/routes/app_page.dart';

import 'components/game_custom.dart';

class GamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, top: 40, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GameCustom(
                    image: "https://segredodosgames.com.br/wp-content/uploads/2020/11/summoners-war.jpg",
                    text: "Summoners War",
                  voidCallback: (){
                      Get.offNamed(Routes.BASE);
                  },
                ),
                GameCustom(
                    image: "https://cdn-www.bluestacks.com/bs-images/Summoners-War-Lost-Centuria_CBT-Announcement_EN_1.jpg",
                    text: "Lost Centuria"),
                GameCustom(
                  image: "https://segredodosgames.com.br/wp-content/uploads/2020/11/summoners-war.jpg",
                  text: "Summoners War",
                ),
                GameCustom(
                    image: "https://cdn-www.bluestacks.com/bs-images/Summoners-War-Lost-Centuria_CBT-Announcement_EN_1.jpg",
                    text: "Lost Centuria")
              ],
            ),
          )
        ],
      ),
    );
  }
}
