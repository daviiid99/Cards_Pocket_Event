import 'package:flutter/material.dart';
import '../../exports.dart';

class DesignBanner extends StatelessWidget{
  @override
  const DesignBanner({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.2,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.1,
        bottom: getHeight(context) * 0.05,
        left: getWidth(context) * 0.1,
        right: getWidth(context) * 0.1,
      ),
      child: Row(
        children: [
          // Text Banner
          Container(
            height: getHeight(context) * 0.2,
            width: getWidth(context) * 0.4,
            margin: EdgeInsets.only(
              right: getWidth(context) * 0.05,
              left: getWidth(context) * 0.025
            ),
            child: Text("Material Design", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35, shadows: [Shadow(color: Colors.blueAccent.shade700, blurRadius: 18.0, offset: Offset.zero)]), textAlign: TextAlign.left,),
          ),

          // Image Banner
          Container(
            height: getHeight(context) * 0.2,
            width: getWidth(context) * 0.3,
            margin: EdgeInsets.only(
              right: getWidth(context) * 0.025
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/shortcuts/design.png")
              )
            ),
          )
        ],
      ),
    );
  }
}