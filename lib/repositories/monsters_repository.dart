import 'package:dio/dio.dart';
import 'package:sw_app/models/monster_model.dart';
import 'package:sw_app/utils/constants.dart';
import 'package:sw_app/utils/dio/custom_dio.dart';

class MonstersRepository {


  Future<MonstersModel> getMonsters(String url) async {
    try {
      Dio dio = CustomDio().instance;

      final response = await dio.get(url);

      if (response.statusCode == 200) {
        //print("${response.data["bestiary_slug"]}");
        return await MonstersModel.fromJson(response.data);

      } else {
        print("Error");
      }
    } catch (e) {
      print("Error 2");
    }
  }
}