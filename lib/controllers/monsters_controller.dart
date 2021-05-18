
import 'package:get/get.dart';
import 'package:sw_app/models/monster_model.dart';
import 'package:sw_app/repositories/monsters_repository.dart';
import 'package:sw_app/utils/constants.dart';

class MonstersController extends GetxController {
  final MonstersRepository monstersRepository = MonstersRepository();
  Rx<MonstersModel> monstersModel = MonstersModel().obs;

  Future<void> getMonsters()async{
    monstersModel.value = await monstersRepository.getMonsters(API_URL + "api/v2/monsters/");
    //print('${monstersModel.results[0].leaderSkill.id}');
  }

  void getMonstersNext()async{
    if(monstersModel.value.next != null){
      monstersModel.value = await monstersRepository.getMonsters(monstersModel.value.next);
    }
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getMonsters();
  }

}