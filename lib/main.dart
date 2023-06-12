import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'exports.dart';


void main(){
  runApp(EventApp());
}

class EventApp extends StatelessWidget{
  @override
  const EventApp({super.key});

  @override
  Widget build(BuildContext context){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
        debugShowCheckedModeBanner : false,
        home: const EventAppView(),
        initialRoute: "home",
        routes : {
          "home" :  (_) => const EventAppView() ,
          "concept" :  (_) => const ConceptScreenView(),
          "technologies" :  (_) => const TechnologiesScreenView(),
          "framework" :  (_) => const FrameworkScreenView(),
          "design" : (_) => const DesignScreenView(),
          "distribution" : (_) => const DistributionScreenView(),
          "game" : (_) => const GameScreenView(),
        }
    );
  }
}