import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';

class DashBanner extends StatelessWidget{
  @override
  const DashBanner({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.4,
      width: getWidth(context) * 0.8,
      margin: EdgeInsets.only(
        left: getWidth(context) * 0.1,
        right: getWidth(context) * 0.1,
        top: getHeight(context) * 0.15,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/distributionScreen/dash.png"),
          fit: getHeight(context) > 500 ? BoxFit.fitHeight : BoxFit.fitHeight
        )
      ),
    );
  }
}