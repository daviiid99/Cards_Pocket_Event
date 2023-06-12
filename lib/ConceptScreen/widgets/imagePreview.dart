import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

imagePreview(BuildContext context, ConceptScreenModel viewModel, int index){

  showDialog(
      context: context,
      builder: (BuildContext context){

        print(getWidth(context));
        return Container(
          height: getWidth(context) > 500 ? getHeight(context) * 0.6 : getHeight(context) * 0.3,
          width: getWidth(context) > 500 ? getWidth(context) * 0.6 : getWidth(context) * 0.8,
          margin: EdgeInsets.only(
            top:  getWidth(context) > 500 ? getHeight(context) * 0.2 : getHeight(context) * 0.35,
            bottom:  getWidth(context) > 500 ? getHeight(context) * 0.2 : getHeight(context) * 0.35 ,
            left:  getWidth(context) > 500  ? getWidth(context) * 0.2 : getWidth(context) * 0.1,
            right :  getWidth(context) > 500  ? getWidth(context) * 0.2 :  getWidth(context) * 0.1
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(viewModel.people[index]),
              fit: BoxFit.fill
            )
          ),
        );
      }
  );
}