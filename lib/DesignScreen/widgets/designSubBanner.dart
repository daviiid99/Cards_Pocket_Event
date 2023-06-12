import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';

class DesignSubBanner extends StatelessWidget{
  @override
  const DesignSubBanner({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.2,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: getWidth(context) * 0.1,
        right: getWidth(context) * 0.1,
        top: getHeight(context) * 0.4,
      ),
      child: const Text("Elige un componente", style: TextStyle(color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
    );
  }
}