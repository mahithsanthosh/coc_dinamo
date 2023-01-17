class Profile {
  String? tag;
  String? name;
  int? townHallLevel;
  int? townHallWeaponLevel;
  int? expLevel;
  int? trophies;
  int? bestTrophies;
  int? warStars;
  int? attackWins;
  int? defenseWins;
  int? builderHallLevel;
  int? versusTrophies;
  int? bestVersusTrophies;
  int? versusBattleWins;
  String? role;
  String? warPreference;
  int? donations;
  int? donationsReceived;
  int? clanCapitalContributions;
  Clan? clan;
  League? league;
  List<Achievements>? achievements;
  PlayerHouse? playerHouse;
  int? versusBattleWinCount;
  List<Labels>? labels;
  List<Troops>? troops;
  List<Heroes>? heroes;
  List<Spells>? spells;

  Profile(
      {this.tag,
      this.name,
      this.townHallLevel,
      this.townHallWeaponLevel,
      this.expLevel,
      this.trophies,
      this.bestTrophies,
      this.warStars,
      this.attackWins,
      this.defenseWins,
      this.builderHallLevel,
      this.versusTrophies,
      this.bestVersusTrophies,
      this.versusBattleWins,
      this.role,
      this.warPreference,
      this.donations,
      this.donationsReceived,
      this.clanCapitalContributions,
      this.clan,
      this.league,
      this.achievements,
      this.playerHouse,
      this.versusBattleWinCount,
      this.labels,
      this.troops,
      this.heroes,
      this.spells});

  Profile.fromJson(Map<String, dynamic> json) {
    tag = json['tag'];
    name = json['name'];
    townHallLevel = json['townHallLevel'];
    townHallWeaponLevel = json['townHallWeaponLevel'];
    expLevel = json['expLevel'];
    trophies = json['trophies'];
    bestTrophies = json['bestTrophies'];
    warStars = json['warStars'];
    attackWins = json['attackWins'];
    defenseWins = json['defenseWins'];
    builderHallLevel = json['builderHallLevel'];
    versusTrophies = json['versusTrophies'];
    bestVersusTrophies = json['bestVersusTrophies'];
    versusBattleWins = json['versusBattleWins'];
    role = json['role'];
    warPreference = json['warPreference'];
    donations = json['donations'];
    donationsReceived = json['donationsReceived'];
    clanCapitalContributions = json['clanCapitalContributions'];
    clan = json['clan'] != null ? new Clan.fromJson(json['clan']) : null;
    league =
        json['league'] != null ? new League.fromJson(json['league']) : null;
    if (json['achievements'] != null) {
      achievements = <Achievements>[];
      json['achievements'].forEach((v) {
        achievements!.add(new Achievements.fromJson(v));
      });
    }
    playerHouse = json['playerHouse'] != null
        ? new PlayerHouse.fromJson(json['playerHouse'])
        : null;
    versusBattleWinCount = json['versusBattleWinCount'];
    if (json['labels'] != null) {
      labels = <Labels>[];
      json['labels'].forEach((v) {
        labels!.add(new Labels.fromJson(v));
      });
    }
    if (json['troops'] != null) {
      troops = <Troops>[];
      json['troops'].forEach((v) {
        troops!.add(new Troops.fromJson(v));
      });
    }
    if (json['heroes'] != null) {
      heroes = <Heroes>[];
      json['heroes'].forEach((v) {
        heroes!.add(new Heroes.fromJson(v));
      });
    }
    if (json['spells'] != null) {
      spells = <Spells>[];
      json['spells'].forEach((v) {
        spells!.add(new Spells.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tag'] = this.tag;
    data['name'] = this.name;
    data['townHallLevel'] = this.townHallLevel;
    data['townHallWeaponLevel'] = this.townHallWeaponLevel;
    data['expLevel'] = this.expLevel;
    data['trophies'] = this.trophies;
    data['bestTrophies'] = this.bestTrophies;
    data['warStars'] = this.warStars;
    data['attackWins'] = this.attackWins;
    data['defenseWins'] = this.defenseWins;
    data['builderHallLevel'] = this.builderHallLevel;
    data['versusTrophies'] = this.versusTrophies;
    data['bestVersusTrophies'] = this.bestVersusTrophies;
    data['versusBattleWins'] = this.versusBattleWins;
    data['role'] = this.role;
    data['warPreference'] = this.warPreference;
    data['donations'] = this.donations;
    data['donationsReceived'] = this.donationsReceived;
    data['clanCapitalContributions'] = this.clanCapitalContributions;
    if (this.clan != null) {
      data['clan'] = this.clan!.toJson();
    }
    if (this.league != null) {
      data['league'] = this.league!.toJson();
    }
    if (this.achievements != null) {
      data['achievements'] = this.achievements!.map((v) => v.toJson()).toList();
    }
    if (this.playerHouse != null) {
      data['playerHouse'] = this.playerHouse!.toJson();
    }
    data['versusBattleWinCount'] = this.versusBattleWinCount;
    if (this.labels != null) {
      data['labels'] = this.labels!.map((v) => v.toJson()).toList();
    }
    if (this.troops != null) {
      data['troops'] = this.troops!.map((v) => v.toJson()).toList();
    }
    if (this.heroes != null) {
      data['heroes'] = this.heroes!.map((v) => v.toJson()).toList();
    }
    if (this.spells != null) {
      data['spells'] = this.spells!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Clan {
  String? tag;
  String? name;
  int? clanLevel;
  BadgeUrls? badgeUrls;

  Clan({this.tag, this.name, this.clanLevel, this.badgeUrls});

  Clan.fromJson(Map<String, dynamic> json) {
    tag = json['tag'];
    name = json['name'];
    clanLevel = json['clanLevel'];
    badgeUrls = json['badgeUrls'] != null
        ? new BadgeUrls.fromJson(json['badgeUrls'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tag'] = this.tag;
    data['name'] = this.name;
    data['clanLevel'] = this.clanLevel;
    if (this.badgeUrls != null) {
      data['badgeUrls'] = this.badgeUrls!.toJson();
    }
    return data;
  }
}

class BadgeUrls {
  String? small;
  String? large;
  String? medium;

  BadgeUrls({this.small, this.large, this.medium});

  BadgeUrls.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    large = json['large'];
    medium = json['medium'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['large'] = this.large;
    data['medium'] = this.medium;
    return data;
  }
}

class League {
  int? id;
  String? name;
  IconUrls? iconUrls;

  League({this.id, this.name, this.iconUrls});

  League.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    iconUrls = json['iconUrls'] != null
        ? new IconUrls.fromJson(json['iconUrls'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.iconUrls != null) {
      data['iconUrls'] = this.iconUrls!.toJson();
    }
    return data;
  }
}

class Achievements {
  String? name;
  int? stars;
  int? value;
  int? target;
  String? info;
  String? completionInfo;
  String? village;

  Achievements(
      {this.name,
      this.stars,
      this.value,
      this.target,
      this.info,
      this.completionInfo,
      this.village});

  Achievements.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    stars = json['stars'];
    value = json['value'];
    target = json['target'];
    info = json['info'];
    completionInfo = json['completionInfo'];
    village = json['village'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['stars'] = this.stars;
    data['value'] = this.value;
    data['target'] = this.target;
    data['info'] = this.info;
    data['completionInfo'] = this.completionInfo;
    data['village'] = this.village;
    return data;
  }
}

class PlayerHouse {
  List<Elements>? elements;

  PlayerHouse({this.elements});

  PlayerHouse.fromJson(Map<String, dynamic> json) {
    if (json['elements'] != null) {
      elements = <Elements>[];
      json['elements'].forEach((v) {
        elements!.add(new Elements.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.elements != null) {
      data['elements'] = this.elements!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Elements {
  String? type;
  int? id;

  Elements({this.type, this.id});

  Elements.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    return data;
  }
}

class Labels {
  int? id;
  String? name;
  IconUrls? iconUrls;

  Labels({this.id, this.name, this.iconUrls});

  Labels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    iconUrls = json['iconUrls'] != null
        ? new IconUrls.fromJson(json['iconUrls'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.iconUrls != null) {
      data['iconUrls'] = this.iconUrls!.toJson();
    }
    return data;
  }
}

class IconUrls {
  String? small;
  String? tiny;
  String? medium;

  IconUrls({this.small, this.tiny, this.medium});

  IconUrls.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    tiny = json['tiny'];
    medium = json['medium'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['tiny'] = this.tiny;
    data['medium'] = this.medium;
    return data;
  }
}

class Troops {
  String? name;
  int? level;
  int? maxLevel;
  String? village;

  Troops({this.name, this.level, this.maxLevel, this.village});

  Troops.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    level = json['level'];
    maxLevel = json['maxLevel'];
    village = json['village'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['level'] = this.level;
    data['maxLevel'] = this.maxLevel;
    data['village'] = this.village;
    return data;
  }
}

class Heroes {
  String? name;
  int? level;
  int? maxLevel;
  String? village;

  Heroes({this.name, this.level, this.maxLevel, this.village});

  Heroes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    level = json['level'];
    maxLevel = json['maxLevel'];
    village = json['village'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['level'] = this.level;
    data['maxLevel'] = this.maxLevel;
    data['village'] = this.village;
    return data;
  }
}

class Spells {
  String? name;
  int? level;
  int? maxLevel;
  String? village;

  Spells({this.name, this.level, this.maxLevel, this.village});

  Spells.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    level = json['level'];
    maxLevel = json['maxLevel'];
    village = json['village'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['level'] = this.level;
    data['maxLevel'] = this.maxLevel;
    data['village'] = this.village;
    return data;
  }
}
