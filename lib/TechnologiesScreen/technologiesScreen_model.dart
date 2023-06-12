import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quiver/async.dart';
import 'package:stacked/stacked.dart';

class TechnologiesScreenModel extends BaseViewModel implements Initialisable{

  bool isModelReady = false;
  int countDown = 120;
  List<String> techsImages  = ["assets/technologiesScreen/flutter.png", "assets/technologiesScreen/dart.png", "assets/technologiesScreen/sqflite.png"];
  List<String> techsStrings = ["Flutter", "Dart", "SQFLite"];
  late BuildContext context;
  Map<String,dynamic> config = {"exit" :  "false"};
  Map<String,dynamic> categories = {
    "Flutter" : {
      "card_1": {
        "image": "assets/technologiesScreen/flutter/cards_1_left.png",
        "text": "Fuente Unica"
      },

      "card_2": {
        "image": "assets/technologiesScreen/flutter/card_2_left.png",
        "text": "Para Empresas"
      },
    },

      "Dart" : {
        "card_1" : {
          "image" :  "assets/technologiesScreen/dart/cards_1_left.png",
          "text" :  "Libre"
        },

        "card_2" : {
          "image" :  "assets/technologiesScreen/dart/cards_2_left.png",
          "text" : "Seguro",
        }
      },

      "SQFLite" :  {
        "card_1" : {
          "image" :  "assets/technologiesScreen/sqflite/cards_1_left.png",
          "text" :  "Local",
        },

        "card_2" : {
          "image" :  "assets/technologiesScreen/sqflite/cards_2_left.png",
          "text" :  "Liviano",
        }
      }
  };

  currentPageCountDown(BuildContext context, int countDownD) async {
    // A method to exit from current screen after 60s
    CountdownTimer timer = CountdownTimer(Duration(seconds: 60), Duration(seconds: 1));
    var listener = timer.listen(null);

    listener.onData((data) {
      if (countDown > 0) countDown--;
      notifyListeners();
      if (countDown == 0){
        // Return to previous context
        manualExit(context);
        countDown = 60;
        listener.pause();

      }

    });
  }

  manualExit(BuildContext context) async{
    Directory dir = await getApplicationDocumentsDirectory();

    if (dir.existsSync()){
      // Create a temp file
      File tempFile = File("${dir.path}/settings.txt");
      tempFile.createSync();
      if (tempFile.existsSync()){
        // Write a variable to it
        config["exit"] = true;
        String temp = jsonEncode(config);
        tempFile.writeAsStringSync(temp);
        Navigator.of(context).pop();
      }
    }
  }


  @override
  void initialise(){

  }
}