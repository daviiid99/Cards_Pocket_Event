import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';

class DistributionBanner extends StatelessWidget{
  @override
  const DistributionBanner({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.2,
      width: getWidth(context) * 0.8,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.15,
        left: getWidth(context) * 0.1,
        right: getWidth(context) * 0.1
      ),
      child: const Text("Escanea y Juega", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40), textAlign: TextAlign.center,),
    );
  }
}