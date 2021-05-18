import 'package:flutter/material.dart';
import 'package:sw_app/models/monster_model.dart';
import 'package:sw_app/utils/constants.dart';

class MonsterWidget extends StatelessWidget {
  MonsterWidget(this.results);

  final Results results;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1),
      width: 130,
      child: Card(
        child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      API_IMAGE + results.imageFilename,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text("${results.name}",overflow: TextOverflow.ellipsis, maxLines: 1,)
              ],
            ),
      ),
    );
  }
}
