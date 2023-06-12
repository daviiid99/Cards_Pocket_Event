import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quiver/async.dart';
import 'package:stacked/stacked.dart';
import '../control.dart';

class ConceptScreenModel extends BaseViewModel implements Initialisable {

  List<String> people = ["assets/conceptScreen/people_1.png", "assets/conceptScreen/people_2.jpeg", "assets/conceptScreen/people_3.jpeg"];
  bool isModelReady = false;
  int countDown = 60;
  late BuildContext context;
  Map<String,dynamic> config = {"exit" :  "false"};

  currentPageCountDown(BuildContext context, int countDownD) async {
    // A method to exit from current screen after 60s
    CountdownTimer timer = CountdownTimer(Duration(seconds: 60), Duration(seconds: 1));
    var listener = timer.listen(null);

    listener.onData((data) {
      if (countDownD > 0) countDownD--;
      countDown = countDownD;
      notifyListeners();
      if (countDownD == 0){
        // Return to previous context
        manualExit(context);
        countDownD = 60;
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