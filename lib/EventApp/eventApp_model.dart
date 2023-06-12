import 'dart:convert';
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiver/async.dart';
import 'package:stacked/stacked.dart';
import '../exports.dart';
import 'package:path_provider/path_provider.dart';

class EventAppModel extends BaseViewModel implements Initialisable {

  List<ShortcutsDb> shortcuts = [];
  List<int> flowIndexes = [0];
  AudioPlayer player = AudioPlayer();
  bool isMusicPlaying = false;
  bool isMusicPaused = true;
  String currentDurationStr = "";
  String fixedDurationStr = "";
  Map<String,dynamic> configMap = {};

  @override
  void initialise(){
    retrieveShortcuts();
    checkMusicState();
  }

  retrieveShortcuts() async {
    // A method that retrieve database entries

    try{
      shortcuts = await ShortcutsDb.retrieveShortcuts();
      notifyListeners();
    } catch (e){
      ShortcutsData.insertShortcutData();
      shortcuts = await ShortcutsDb.retrieveShortcuts();
      notifyListeners();
    }
  }

  addIndexToFlow(int index) async {
    // This method ads previous index to flow and unlock next
    // This prevents users to skip an entry

    if (!flowIndexes.contains(index)) flowIndexes.add(index);
    flowIndexes.add(index+1);
    notifyListeners();
  }

  navigateToChoosedRoute(int index, BuildContext context) async {
    // After pressing an entry
    // User will be pushed to selected entry

    Navigator.of(context).pushNamed(shortcuts[index].route);
  }

  playTheme() async {
    // Simple method to initialize player
    player.play(AssetSource("songs/theme.mp3"));
    notifyListeners();
  }

  formatDurationToString(Duration d, String type) async {
    // A method that formats current duration to string
    // Also compares durations

    int minutes = Duration(minutes: d.inMinutes).inMinutes;
    int seconds = Duration(seconds: d.inSeconds).inSeconds;

    if (type == "full"){
      fixedDurationStr = "$minutes:${seconds-1}";
      notifyListeners();
    } else {
      currentDurationStr = "$minutes:$seconds";
      if (kDebugMode) {
        print("$currentDurationStr/$fixedDurationStr");
      }
      notifyListeners();
      if (currentDurationStr == fixedDurationStr){
        player.pause();
        player.stop();
        isMusicPlaying = false;
        notifyListeners();
      }
    }

  }

  musicBackground() async {
    // A method that plays a background theme forever :)

    // Play background music
    playTheme();

    // Create listeners
    player.onDurationChanged.listen((Duration d) {
      formatDurationToString(d, "full");
    });

    player.onPositionChanged.listen((Duration d) {
      formatDurationToString(d, "current");
    });
  }

  pauseCurrentPlayer() async {
    // This method pause current player
    // After navigate to a new page
    player.pause();
    Control.isNewContext = true;
    notifyListeners();
  }

  checkConfigFile() async {
    // Checks if config file changed
    Directory dir = await getApplicationDocumentsDirectory();
    File config = File("${dir.path}/settings.txt");

    if (config.existsSync() && config.readAsStringSync().isNotEmpty){
      configMap = jsonDecode(config.readAsStringSync());
      notifyListeners();
      config.deleteSync();
    }
  }

  checkMusicState() async {
    // Listen for current music state
    // If music stopped, resume it

    CountdownTimer timer = CountdownTimer(const Duration(hours: 24), const Duration(seconds: 1));
    var listener = timer.listen(null);

    listener.onData((data) {
      if (!isMusicPaused){
        if (!isMusicPlaying){
          isMusicPlaying = true;
          notifyListeners();
          musicBackground();
        } else if (Control.isNewContext) {
          player.pause();
          checkConfigFile();
          if (configMap["exit"] == true){
            Control.isNewContext = false;
            configMap = {"exit" : "false"};
            notifyListeners();
            player.resume();
          }
        }
      }

    });
}



}