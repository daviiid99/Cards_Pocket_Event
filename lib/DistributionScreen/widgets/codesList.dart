import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';

class CodesList extends StatelessWidget{
  @override
  const CodesList({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.4,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.45,
        left: getWidth(context) * 0.1,
        right: getWidth(context) * 0.1
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          // Android QR
          InkWell(
            onTap: (){
              codePreview(context, "assets/distributionScreen/play_qr.png");
            },
            child : Container(
              height: getHeight(context) * 0.3,
              width: getWidth(context) * 0.5,
              margin: EdgeInsets.only(
                left: getWidth(context) * 0.05,
                top: getHeight(context) * 0.05,
                bottom: getHeight(context) * 0.05
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/distributionScreen/play_qr.png"),
                  fit: BoxFit.fitHeight
                )
              ),
            ),
          ),

          // Web QR
          InkWell(
              onTap: (){
                codePreview(context, "assets/distributionScreen/chrome_qr.png");
              },
            child : Container(
              height: getHeight(context) * 0.3,
              width: getWidth(context) * 0.5,
              margin: EdgeInsets.only(
                left: getWidth(context) * 0.05,
                right: getWidth(context) * 0.05,
                top: getHeight(context) * 0.05,
                bottom: getHeight(context) * 0.05
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/distributionScreen/chrome_qr.png"),
                  fit: BoxFit.fitHeight
                )
              ),
            )
          ),
        ],
      ),
    );
  }
}