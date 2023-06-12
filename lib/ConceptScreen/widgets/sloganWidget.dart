import 'package:flutter/material.dart';
import '../../resize.dart';

class SloganWidget extends StatelessWidget{
  @override
  const SloganWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.maxFinite,
      height: getHeight(context) * 0.45,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.07,
        left: getWidth(context) * 0.05,
        right: getWidth(context) * 0.05,
      ),
      child: Column(
        children: [
          // Logo
          Container(
            height: getHeight(context) * 0.2,
            width: double.maxFinite,
            margin: EdgeInsets.only(
                bottom: getHeight(context) * 0.05,
                left: getWidth(context) * 0.25,
                right: getWidth(context) * 0.25),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo/original_logo.png"),
                fit: BoxFit.fitHeight
              )
            ),
          ),

          // Slogan
          Container(
            height: getHeight(context) * 0.15,
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: getWidth(context) * 0.1,
              right: getWidth(context) * 0.1
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [
                 Text("Juega\nDonde quieras\nCon quien quieras", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35), textAlign: TextAlign.left,)
              ],
            ),
          )
        ],
      ) ,
    );
  }
}