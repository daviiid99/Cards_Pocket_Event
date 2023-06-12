import 'package:cards_pocket_event/TechnologiesScreen/widgets/detailsScreen.dart';
import 'package:flutter/material.dart';
import '../../exports.dart';

class UtilsList extends StatelessWidget{
  @override
  const UtilsList({
    required this.viewModel,
    super.key});

  final TechnologiesScreenModel viewModel;

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.35,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: getWidth(context) * 0.05,
        right: getWidth(context) * 0.05,
        top: getHeight(context) * 0.45
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: viewModel.techsImages.length,
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              detailsScreen(context, viewModel, viewModel.techsStrings[index]);
            },
              child : Container(
                height: getHeight(context) * 0.3,
                width: getWidth(context) * 0.5,
                margin: EdgeInsets.only(
                  right: index == viewModel.techsStrings.length - 1 ? getWidth(context) * 0.05 : 0.0,
                  left: getWidth(context) * 0.05,
                  bottom: getHeight(context) * 0.025
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(viewModel.techsImages[index]),
                    fit: BoxFit.fitWidth
                  ),
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 3.0, blurStyle: BlurStyle.normal, spreadRadius: 1.0)]
                ),
                child: Column(
                  children: [
                    Container(
                      height: getHeight(context) * 0.05,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                        top: getHeight(context) * 0.275,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        children  : [
                          const Spacer(),
                          Text(viewModel.techsStrings[index], style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25), textAlign: TextAlign.center,),
                          const Spacer(),
                        ]
                      ),
                    )
                  ],
                ),
              ),
          );
        }
      ),
    );
  }
}