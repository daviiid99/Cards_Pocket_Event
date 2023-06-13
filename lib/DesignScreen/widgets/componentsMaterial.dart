import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';

class ComponentsMaterial extends StatelessWidget{
  @override
  ComponentsMaterial({
    required this.viewModel,
    super.key});

  final DesignScreenModel viewModel;

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
          // List of all available components

          // Button
          Container(
            height: getHeight(context) * 0.1,
            width: getWidth(context) * 0.4,
            margin: EdgeInsets.only(
              top: getHeight(context) * 0.15,
              bottom: getHeight(context) * 0.15,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child : TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black
              ),
              onPressed: (){
                var snack = const SnackBar( content: Text("Esto es un Snackbar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 35), textAlign: TextAlign.center, ), backgroundColor: Colors.black, behavior: SnackBarBehavior.floating, padding: EdgeInsets.all(4.0) ,);
                ScaffoldMessenger.of(context).showSnackBar(snack);
              },
              child: const Text("Empezar", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              ),
            ),
          ),

          // TextField
          Container(
            height: getHeight(context) * 0.1,
            width: getWidth(context) * 0.7,
            margin: EdgeInsets.only(
              top: getHeight(context) * viewModel.controllerHeight,
              bottom: getHeight(context) * 0.14,
              left: getWidth(context) * 0.05,
              right: getWidth(context) * 0.05
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child : TextField(
                onTap: (){
                  // Modify Elevation for better visual on writing
                  viewModel.controllerHeight = 0.05;
                  viewModel.notifyListeners();
                },

                onTapOutside: (_){
                  viewModel.controllerHeight =  0.16;
                  viewModel.notifyListeners();
                },
                style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.1),
                  hintText: "Escribe tu nombre",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 30)
                ),
                controller:  viewModel.controller,
              ),
            ),
          ),

          // Card
          LongPressDraggable(
            feedback: Container(
              height: getHeight(context) * 0.35,
              width: getWidth(context) * 0.5,
              margin: EdgeInsets.only(
                right: getWidth(context) * 0.05,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage("assets/designScreen/0.png"),
                fit: getWidth(context) > 500 ?  BoxFit.fitHeight : BoxFit.fill
                )
              ),
            ) ,
            child: Container(
                height: getHeight(context) * 0.3,
                width: getWidth(context) * 0.2,
                margin: EdgeInsets.only(
                  left: getWidth(context) * 0.05,
                  right: getWidth(context) * 0.05,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/designScreen/0.png"),
                    fit: getWidth(context) > 500 ?  BoxFit.fitHeight : BoxFit.fitWidth,
                  )
                ),
              )
          ),

          // Sound Button

          Container(
            height: getHeight(context) * 0.3,
            width: getWidth(context) * 0.3,
            margin: EdgeInsets.only(
              top: getHeight(context) * 0.05,
              bottom: getHeight(context) * 0.05,
              right: getWidth(context) * 0.05
            ),
            child: IconButton(
              icon: Icon(viewModel.isSoundEnabled ?  Icons.volume_up_rounded :  Icons.volume_off_rounded, size: 50, color: Colors.black,),
              onPressed: (){
                viewModel.isSoundEnabled ? viewModel.isSoundEnabled = false :  viewModel.isSoundEnabled = true;
                (context as Element).reassemble();
              },
            ),
          )
        ],
      ),
    );
  }
}