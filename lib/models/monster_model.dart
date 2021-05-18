class MonstersModel {
  int count;
  String next ;
  String previous;
  List<Results> results;

  MonstersModel({this.count, this.next, this.previous, this.results});

  MonstersModel.fromJson(Map<String, dynamic> json) {
    count = json['count']??'';
    next = json['next']?? '';
    previous = json['previous']?? '';
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'MonstersModel{count: $count, next: $next, previous: $previous, results: $results}';
  }
}

class Results {
  int id;
  String url;
  String bestiarySlug;
  int com2usId;
  int familyId;
  String name;
  String imageFilename;
  String element;
  String archetype;
  int baseStars;
  int naturalStars;
  bool obtainable;
  bool canAwaken;
  int awakenLevel;
  String awakenBonus;
  List<int> skills;
  int skillUpsToMax;
  //String leaderSkill; //TODO: ALERAR PARA MAP
  LeaderSkill leaderSkill;
  List<String> homunculusSkills;
  int baseHp;
  int baseAttack;
  int baseDefense;
  int speed;
  int critRate;
  int critDamage;
  int resistance;
  int accuracy;
  int rawHp;
  int rawAttack;
  int rawDefense;
  int maxLvlHp;
  int maxLvlAttack;
  int maxLvlDefense;
  int awakensFrom;
  int awakensTo;
  List<String> awakenCost;
  List<Source> source;
  bool fusionFood;
  bool homunculus;
  String craftCost;
  List<String> craftMaterials;

  Results(
      {this.id,
        this.url,
        this.bestiarySlug,
        this.com2usId,
        this.familyId,
        this.name,
        this.imageFilename,
        this.element,
        this.archetype,
        this.baseStars,
        this.naturalStars,
        this.obtainable,
        this.canAwaken,
        this.awakenLevel,
        this.awakenBonus,
        this.skills,
        this.skillUpsToMax,
        //this.leaderSkill,
        this.homunculusSkills,
        this.baseHp,
        this.baseAttack,
        this.baseDefense,
        this.speed,
        this.critRate,
        this.critDamage,
        this.resistance,
        this.accuracy,
        this.rawHp,
        this.rawAttack,
        this.rawDefense,
        this.maxLvlHp,
        this.maxLvlAttack,
        this.maxLvlDefense,
        this.awakensFrom,
        this.awakensTo,
        this.awakenCost,
        this.source,
        this.fusionFood,
        this.homunculus,
        this.craftCost,
        this.craftMaterials
      });

  Results.fromJson(Map<String, dynamic> json) {

    id = json['id']??-1;
    url = json['url']??'';
    bestiarySlug = json['bestiary_slug']??'null';
    com2usId = json['com2us_id']??-1;
    familyId = json['family_id']??-1;
    name = json['name']??'';
    imageFilename = json['image_filename']??'null';
    element = json['element']??'';
    archetype = json['archetype']??'null';
    baseStars = json['base_stars']??-1;
    naturalStars = json['natural_stars']??-1;
    obtainable = json['obtainable']??false;
    canAwaken = json['can_awaken']??false;
    awakenLevel = json['awaken_level']??-1;
    awakenBonus = json['awaken_bonus']??'null';
    skills = json['skills']?.cast<int>();
    skillUpsToMax = json['skill_ups_to_max']??-1;
    leaderSkill = json['leader_skill'] != null
        ? new LeaderSkill.fromJson(json['leader_skill'])
        : null;
    homunculusSkills = json['homunculus_skills']?.cast<String>();
    baseHp = json['base_hp']??-1;
    baseAttack = json['base_attack']??-1;
    baseDefense = json['base_defense']??-1;
    speed = json['speed']??-1;
    critRate = json['crit_rate']??-1;
    critDamage = json['crit_damage']??-1;
    resistance = json['resistance']??-1;
    accuracy = json['accuracy']??-1;
    rawHp = json['raw_hp']??-1;
    rawAttack = json['raw_attack']??-1;
    rawDefense = json['raw_defense']??-1;
    maxLvlHp = json['max_lvl_hp']??-1;
    maxLvlAttack = json['max_lvl_attack']??-1;
    maxLvlDefense = json['max_lvl_defense']??-1;
    awakensFrom = json['awakens_from']??-1;
    awakensTo = json['awakens_to']??-1;
    awakenCost = json['awaken_cost']?.cast<String>();
    if (json['source'] != null) {
      source = new List<Source>();
      json['source'].forEach((v) {
        source.add(new Source.fromJson(v));
      });
    }
    fusionFood = json['fusion_food']??false;
    homunculus = json['homunculus']??false;
    craftCost = json['craft_cost']??'';
    craftMaterials = json['craft_materials']?.cast<String>();

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['bestiary_slug'] = this.bestiarySlug;
    data['com2us_id'] = this.com2usId;
    data['family_id'] = this.familyId;
    data['name'] = this.name;
    data['image_filename'] = this.imageFilename;
    data['element'] = this.element;
    data['archetype'] = this.archetype;
    data['base_stars'] = this.baseStars;
    data['natural_stars'] = this.naturalStars;
    data['obtainable'] = this.obtainable;
    data['can_awaken'] = this.canAwaken;
    data['awaken_level'] = this.awakenLevel;
    data['awaken_bonus'] = this.awakenBonus;
    data['skills'] = this.skills;
    data['skill_ups_to_max'] = this.skillUpsToMax;
    //data['leader_skill'] = this.leaderSkill;
    data['homunculus_skills'] = this.homunculusSkills;
    data['base_hp'] = this.baseHp;
    data['base_attack'] = this.baseAttack;
    data['base_defense'] = this.baseDefense;
    data['speed'] = this.speed;
    data['crit_rate'] = this.critRate;
    data['crit_damage'] = this.critDamage;
    data['resistance'] = this.resistance;
    data['accuracy'] = this.accuracy;
    data['raw_hp'] = this.rawHp;
    data['raw_attack'] = this.rawAttack;
    data['raw_defense'] = this.rawDefense;
    data['max_lvl_hp'] = this.maxLvlHp;
    data['max_lvl_attack'] = this.maxLvlAttack;
    data['max_lvl_defense'] = this.maxLvlDefense;
    data['awakens_from'] = this.awakensFrom;
    data['awakens_to'] = this.awakensTo;
    data['awaken_cost'] = this.awakenCost;
    data['source'] = this.source;
    data['fusion_food'] = this.fusionFood;
    data['homunculus'] = this.homunculus;
    data['craft_cost'] = this.craftCost;
    data['craft_materials'] = this.craftMaterials;
    return data;
  }
}

class LeaderSkill {
  int id;
  String url;
  String attribute;
  int amount;
  String area;
  String element;

  LeaderSkill(
      {this.id,
        this.url,
        this.attribute,
        this.amount,
        this.area,
        this.element});

  LeaderSkill.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    attribute = json['attribute'];
    amount = json['amount'];
    area = json['area'];
    element = json['element'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['attribute'] = this.attribute;
    data['amount'] = this.amount;
    data['area'] = this.area;
    data['element'] = this.element;
    return data;
  }
}



class Source {
  int id;
  String url;
  String name;
  String description;
  bool farmableSource;

  Source({this.id, this.url, this.name, this.description, this.farmableSource});

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    description = json['description'];
    farmableSource = json['farmable_source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['description'] = this.description;
    data['farmable_source'] = this.farmableSource;
    return data;
  }
}