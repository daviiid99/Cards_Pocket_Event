import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';
import '../../exports.dart';

detailsScreen(BuildContext context,TechnologiesScreenModel viewModel, String category){
  showDialog(
      context: context,
      builder: (BuildContext context){
        return Scaffold(
          backgroundColor:  Color.fromRGBO(238, 34, 41, 1.0),
          body: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: getHeight(context) * 0.05,
                  bottom: getHeight(context) * 0.05
                ),
                child: Column(
                  children: [
                    Container(
                      height : getHeight(context) * 0.9,
                      width : double.maxFinite,
                      child : ListView(
                      children: [
                        // Card 1
                        Container(
                          height: getHeight(context) * 0.25,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                              top: getHeight(context) * 0.025,
                              left: getWidth(context) * 0.1,
                              right: getWidth(context) * 0.1,
                              bottom: getHeight(context) * 0.05
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5), blurStyle: BlurStyle.normal, blurRadius: 2.0, spreadRadius: 3.0, offset: Offset.zero)]
                          ),
                          child: Row(
                            children: [
                              // Image
                              Container(
                                height : getHeight(context) * 0.3,
                                width: getWidth(context) * 0.35,
                                margin: EdgeInsets.only(
                                    left: getWidth(context) * 0.025,
                                    right: getWidth(context) * 0.05
                                ),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(viewModel.categories[category]["card_1"]["image"]),
                                    )
                                ),
                              ),

                              // Text
                              Container(
                                width: getWidth(context) * 0.25,
                                margin: EdgeInsets.only(
                                    right: getWidth(context) * 0.025
                                ),
                                child: Text(viewModel.categories[category]["card_1"]["text"], style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30), textAlign: TextAlign.center,),
                              )
                            ],
                          ),
                        ),


                        // Card 2
                        Container(
                          height: getHeight(context) * 0.25,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                              top: getHeight(context) * 0.025,
                              left: getWidth(context) * 0.1,
                              right: getWidth(context) * 0.1,
                              bottom: getHeight(context) * 0.05
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5), blurStyle: BlurStyle.normal, blurRadius: 2.0, spreadRadius: 3.0, offset: Offset.zero)]
                          ),
                          child: Row(
                            children: [
                              // Image
                              Container(
                                height : getHeight(context) * 0.3,
                                width: getWidth(context) * 0.3,
                                margin: EdgeInsets.only(
                                    left: getWidth(context) * 0.025,
                                    right: getWidth(context) * 0.05
                                ),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(viewModel.categories[category]["card_2"]["image"]),
                                    )
                                ),
                              ),

                              // Text
                              Container(
                                width: getWidth(context) * 0.3,
                                margin: EdgeInsets.only(
                                    right: getWidth(context) * 0.025
                                ),
                                child: Text(viewModel.categories[category]["card_2"]["text"], style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26), textAlign: TextAlign.center,),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: getHeight(context) * 0.1,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                              top: getHeight(context) * 0.15,
                              bottom: getHeight(context) * 0.05,
                              left: getWidth(context) * 0.05,
                              right: getWidth(context) * 0.05,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child : TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.blueAccent
                              ),
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                              child: const Text("Cerrar", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                        )
                        ),
                      ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        );
      }
  );
}