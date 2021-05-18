import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:sw_app/controllers/monsters_controller.dart';

import 'components/monster_widget.dart';

class SearchScreen extends StatelessWidget {
  final MonstersController monstersController = Get.put(MonstersController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              //title: Text("Buscar", style: TextStyle(color: Colors.white),),
              title: Card(
            color: Colors.grey[900],
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: Colors.grey,
                  ),
                  hintText: 'Pesquisar',
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          )),
          // body: ListView(
          //   children: [
          //     Wrap(
          //       children: monstersController.monstersModel.results.map((e) {
          //         return MonsterWidget(e);
          //       }).toList(),
          //     )
          //   ],
          // )

        body: Obx((){
          return LazyLoadScrollView(
            onEndOfPage: (){
              print("${monstersController.monstersModel.value.next}");
              monstersController.getMonstersNext();
            },
            child: ListView.builder(
                itemCount: monstersController.monstersModel.value.results.length,
                itemBuilder: (context, index){
                  return MonsterWidget(monstersController.monstersModel.value.results[index]);
                }),
          );
        })

          // SingleChildScrollView(
          //   child: Wrap(
          //     children: [
          //       ListView.builder(
          //         shrinkWrap: true,
          //         physics: new NeverScrollableScrollPhysics(),
          //         itemCount: monstersController.monstersModel.results.length,
          //         itemBuilder: (context, index) {
          //           return MonsterWidget(monstersController.monstersModel.results[index]);
          //         },
          //       )
          //     ],
          //   ),
          // )
          ),
    );
  }
}
