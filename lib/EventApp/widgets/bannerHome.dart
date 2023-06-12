import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget{
  @override
  const BannerHome({super.key});

  @override
  Widget build(BuildContext context){

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: getWidth(context) * 0.8,
      height: height * 0.3,
      margin: EdgeInsets.only(
        left: getWidth(context) * 0.12,
        right: getWidth(context) * 0.1,
        top: height * 0.05,
        bottom: height * 0.05
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/banner/banner.png"),
          fit: BoxFit.fitHeight
        )
      ),
    );
  }

}