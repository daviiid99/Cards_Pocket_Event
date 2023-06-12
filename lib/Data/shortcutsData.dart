import '../exports.dart';

class ShortcutsData{

  static Map<String,dynamic> shortcutsMap = {
    "¿CARDS Pocket?" : {
      "route" :  "concept",
      "icon" : "assets/shortcuts/concept.png"
    },

    "Tecnologías" : {
      "route" :  "technologies",
      "icon" :  "assets/shortcuts/technologies.png"
    },

    "Framework Multiplataforma" : {
      "route" :  "framework",
      "icon" :  "assets/shortcuts/framework.png"
    },

    "Material Design" : {
      "route" :  "design",
      "icon" :  "assets/shortcuts/design.png"
    },

    "Distribución" : {
      "route" :  "distribution",
      "icon" :  "assets/shortcuts/distribution.png"
    },

    "Jugar" : {
      "route" : "game",
      "icon" :  "assets/shortcuts/game.png"
    }
  };

  static insertShortcutData() async {
    // A static method to insert a shortcut instance

    ShortcutsDb.createTable(); // To be executed once

    for (String option in shortcutsMap.keys){
      ShortcutsDb current = ShortcutsDb(name: option, icon: shortcutsMap[option]["icon"], route: shortcutsMap[option]["route"]);
      ShortcutsDb.insertShortcut(current);
    }
  }

}