import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';

class EntriesWidget extends StatelessWidget{
  @override
  const EntriesWidget({
    required this.viewModel,
    super.key
});

  final EventAppModel viewModel;

  @override
  Widget build(BuildContext context){

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: double.maxFinite,
      height: height * 0.4,
      margin: EdgeInsets.only(
        left: width * 0.05,
        right: width * 0.05,
        top: height * 0.4,
        bottom: height * 0.2
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: viewModel.shortcuts.length,
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              if (!viewModel.flowIndexes.contains(index)){
                var snack = const SnackBar(content: Text("Vuelve más tarde", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25), textAlign: TextAlign.center,), backgroundColor: Colors.black, behavior: SnackBarBehavior.floating, duration: Duration(seconds: 3),);
                ScaffoldMessenger.of(context).showSnackBar(snack);
              } else {
                viewModel.addIndexToFlow(index);
                viewModel.pauseCurrentPlayer();
                viewModel.notifyListeners();
                viewModel.navigateToChoosedRoute(index, context);
              }

            },
              child : Container(
                width: width * 0.6,
                height: height * 0.35,
                margin: EdgeInsets.only(
                  top: height * 0.025,
                  bottom: height * 0.025,
                  left: width * 0.05,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [BoxShadow(color: Colors.black, offset: Offset.zero, blurRadius: 8.0, spreadRadius: 0.5, blurStyle: BlurStyle.normal)],
                  color: Colors.white
                ),
                child: Container(
                  width: width * 0.55,
                  height: height * 0.3,
                  margin: EdgeInsets.only(
                    left: width * 0.025,
                    right: width * 0.025,
                    top: height * 0.01,
                    bottom: height * 0.01
                  ),
                  decoration: BoxDecoration(
                      color: viewModel.flowIndexes.contains(index) ? Colors.redAccent : Colors.grey,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(viewModel.shortcuts[index].icon)
                      )
                  ),
              child: Stack(
                children: [
                  // Shortcut Label
                  Container(
                    width: double.maxFinite,
                  height: height * 0.06,
                  margin: EdgeInsets.only(
                    top: height * 0.29
                    ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)
                    ),
                  color: Colors.white
                  ),
                  child: Text(viewModel.shortcuts[index].name, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25), textAlign: TextAlign.center,),
                     )
                    ],
                  ),
                )
              ),
          );
        }
      ),
    );
  }

}