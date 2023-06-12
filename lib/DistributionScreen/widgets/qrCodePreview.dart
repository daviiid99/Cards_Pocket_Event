import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';

codePreview(BuildContext context, String image){

  showDialog(
      context: context,
      builder: (BuildContext context){
        return Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5),
          body: InkWell(
            onTap: (){
              // Return to previous screen
              Navigator.of(context).pop();
            },
            child : Container(
            height: getHeight(context) * 0.8,
            width: getWidth(context) * 0.8,
            margin: EdgeInsets.only(
              top: getHeight(context) * 0.1,
              bottom: getHeight(context) * 0.1,
              left: getWidth(context) * 0.1,
              right: getWidth(context) * 0.1
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image)
              )
            ),
          ),
        ),
      );
    }
  );
}