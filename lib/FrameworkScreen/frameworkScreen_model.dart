import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quiver/async.dart';
import 'package:stacked/stacked.dart';

class FrameworkScreenModel extends BaseViewModel implements Initialisable{

  int countDown = 120;
  bool isModelReady = false;
  late BuildContext context;
  Map<String,dynamic> config = {"exit" :  "false"};
  List<String> devicesImage = ["assets/frameworksScreen/android.png", "assets/frameworksScreen/ios.png", "assets/frameworksScreen/chrome.png"];
  List<String> devicesStr = ["android", "iOS", "chrome"];
  Map<String,dynamic> devicesScreen = {
    "android" : ["assets/frameworksScreen/android/screen_1.png", "assets/frameworksScreen/android/screen_2.png", "assets/frameworksScreen/android/screen_3.png", "assets/frameworksScreen/android/screen_4.png", "assets/frameworksScreen/android/screen_5.png"],
    "iOS" : ["assets/frameworksScreen/ios/screen_1.png", "assets/frameworksScreen/ios/screen_2.png", "assets/frameworksScreen/ios/screen_3.png", "assets/frameworksScreen/ios/screen_4.png"],
    "chrome" : ["assets/frameworksScreen/chrome/screen_1.png", "assets/frameworksScreen/chrome/screen_2.png", "assets/frameworksScreen/chrome/screen_3.png", "assets/frameworksScreen/chrome/screen_4.png"]
  };

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
        notifyListeners();
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