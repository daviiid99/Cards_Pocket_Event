import 'package:flutter/material.dart';
import '../../exports.dart';

class TechnologyBanner extends StatelessWidget{
  @override
  const TechnologyBanner({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.4,
      width: getWidth(context) * 0.8,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.05,
        bottom: getHeight(context) * 0.55,
        left: getWidth(context) * 0.05,
        right: getWidth(context) * 0.05
      ),
      child: Row(
        children: [
          // Text Banner
            Container(
              width: getWidth(context) * 0.5,
              margin: EdgeInsets.only(
                top: getHeight(context) * 0.05,
                bottom: getHeight(context) * 0.05,
                left: getWidth(context) * 0.05
              ),
              child: const Text("Potencia con ", style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
            ),

          // Image Banner
          Container(
            width: getWidth(context) * 0.25,
            height: getHeight(context) * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/technologiesScreen/google_logo.png"),
                fit: getWidth(context) > 500 ?  BoxFit.fitHeight : BoxFit.fitWidth
              )
            ),
          )
        ],
      ),
    );
  }
}