import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quiver/async.dart';
import 'package:stacked/stacked.dart';

class DesignScreenModel extends BaseViewModel implements Initialisable{

  bool isModelReady = false;
  int countDown = 60;
  Map<String,dynamic> config = {"exit" :  "false"};
  TextEditingController controller = TextEditingController(text: "");
  double controllerHeight = 0.16;
  bool isSoundEnabled = false;


  @override
  void initialise(){

  }

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
}