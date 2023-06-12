import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlayBanner extends StatelessWidget{
  @override
  PlayBanner({super.key});

  final urlAndroid = Uri.parse("https://play.google.com/store/apps/details?id=com.daviiid99.uno_pocket");
  final urlWeb = Uri.parse("https://daviiid99.github.io/CARDS_Pocket/webApp/");

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.8,
      width: getWidth(context) * 0.8,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.1,
        bottom: getHeight(context) * 0.15,
        left: getWidth(context) * 0.1,
        right: getWidth(context) * 0.1
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(238, 34, 41, 1.0),
        image: DecorationImage(
          image: const AssetImage("assets/gameScreen/banner.png"),
          fit: getWidth(context) > 500 ? BoxFit.fitHeight : BoxFit.fitWidth
        )
      ),
      child: Column(
        children: [

          Container(
            height: getHeight(context) * 0.2,
            width: getWidth(context) * 0.8,
            margin: EdgeInsets.only(
              left: getWidth(context) * 0.1,
              right: getWidth(context) * 0.1,
              top: getHeight(context) * 0.1
            ),
            child: const Text("Pruébalo Hoy", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50), textAlign: TextAlign.center
              ,),
          ),

          Container(
            height: getHeight(context) * 0.079,
            width: getWidth(context) * 0.8,
            margin: EdgeInsets.only(
              left: getWidth(context) * 0.1,
              right: getWidth(context) * 0.1,
              top: getHeight(context) * 0.3
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child : TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black
                ),
                onPressed: (){
                  kIsWeb ? launchUrl(urlWeb) : launchUrl(urlAndroid);
                  },
                child: const Text("¡Jugar!", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}