import 'package:flutter/material.dart';
import '../resize.dart';

class ContainerBox extends StatelessWidget{
  @override
  const ContainerBox({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.8,
      width: getWidth(context) * 0.9,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.07,
        bottom: getHeight(context) * 0.1,
        left: getWidth(context) * 0.05,
        right: getWidth(context) * 0.05
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), spreadRadius: 4.0, blurRadius: 0.2, blurStyle: BlurStyle.normal, offset: Offset.zero)]
      ),
    );
  }

}