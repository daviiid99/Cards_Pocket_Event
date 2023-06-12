import 'package:flutter/foundation.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'package:sqflite/sqflite.dart';

class ShortcutsDb{

  ShortcutsDb({
    required this.name,
    required this.icon,
    required this.route
});

  final String name;
  final String icon;
  final String route;

  static const shortcutsTable = """
    CREATE TABLE IF NOT EXISTS shortcuts(
      name TEXT PRIMARY KEY,
      icon TEXT,
      route TEXT);
  """;

  Map<String,dynamic> toMap(){
    return {
      "name" :  name,
      "icon" :  icon,
      "route" :  route
    };
  }

  factory ShortcutsDb.fromMap(Map<String,dynamic> map) => ShortcutsDb(
      name: map["name"],
      icon: map["icon"],
      route: map["route"]);

  static createTable() async {
    // A static method to create shortcuts table

    if (kIsWeb){
      var factory = databaseFactoryFfiWeb;
      var db = await factory.openDatabase("event.db");
      db.transaction((txn) => txn.execute(shortcutsTable));
    } else {
      final Database db = await openDatabase("event.db");
      db.transaction((txn) => txn.execute(shortcutsTable));
    }
  }

  static insertShortcut(ShortcutsDb shortcut) async {
    // A static method to insert a shortcut in shortcuts table

    if (kIsWeb){
      var factory = databaseFactoryFfiWeb;
      var db = await factory.openDatabase("event.db");
      db.insert("shortcuts", shortcut.toMap());
    } else {
      final Database db = await openDatabase("event.db");
      db.insert("shortcuts", shortcut.toMap());
    }
  }

  static retrieveShortcuts() async {
    // A static method to retrieve existing shortcuts

    getShortcuts(List<Map<String,dynamic>> rawShortcuts) {
      List<ShortcutsDb> shortcuts = [];

      for (Map<String,dynamic> shortcut in rawShortcuts){
        ShortcutsDb current = ShortcutsDb.fromMap(shortcut);
        shortcuts.add(current);
      }

      return shortcuts;
    }

    List<Map<String,dynamic>> rawShortcuts = [];

    if (kIsWeb){
      var factory = databaseFactoryFfiWeb;
      var db = await factory.openDatabase("event.db");
      rawShortcuts = await db.query("shortcuts");
    } else {
      final Database db = await openDatabase("event.db");
      rawShortcuts = await db.query("shortcuts");
    }

    List<ShortcutsDb> shortcuts = getShortcuts(rawShortcuts);
    return shortcuts;
  }

}