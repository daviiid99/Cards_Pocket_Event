import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';

showSelectedList(BuildContext context, String device, FrameworkScreenModel viewModel){

  showDialog(
      context: context,
      builder: (BuildContext context){
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                height: getHeight(context) * 0.9,
                width: double.maxFinite,
                margin: EdgeInsets.only(
                  top: getHeight(context) * 0.05,
                  bottom: getHeight(context) * 0.05
                ),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: viewModel.devicesScreen[device].length,
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                          child : Container(
                            height: device == "chrome" ? getHeight(context) * 0.4 : getHeight(context) * 0.9,
                            width: getWidth(context) * 0.9,
                            margin: EdgeInsets.only(
                              top: device == "chrome" ?  getHeight(context) * 0.3 :  0.0,
                              bottom: device == "chrome" ?  getHeight(context) * 0.3 :  0.0 ,
                              left: getWidth(context) * 0.05,
                              right: index  == viewModel.devicesScreen[device].length - 1 ? getWidth(context) * 0.05 : 0.0
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(viewModel.devicesScreen[device][index]),
                                fit: BoxFit.fitHeight
                              )
                            ),
                          ),
                      );
                    }
                  )
              )
            ],
          ),
        );
      }
  );
}