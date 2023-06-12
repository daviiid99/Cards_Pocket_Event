import 'package:flutter/material.dart';
import '../../exports.dart';

class BannerWidget extends StatelessWidget{
  @override
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.2,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.15,
        bottom: getHeight(context) * 0.05
      ),
      child: const Text("Multiplataforma", style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
    );
  }
}