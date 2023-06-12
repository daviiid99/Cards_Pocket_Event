import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quiver/async.dart';


class Control {
  // Global variables
  static int countDown = 60;
  static bool isNewContext = false;
  static int awaitContextPop = 0;
  static Map<String,dynamic> config = {"exit" :  "false"};

}


