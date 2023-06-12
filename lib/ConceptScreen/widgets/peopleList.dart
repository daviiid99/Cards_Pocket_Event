import 'package:cards_pocket_event/ConceptScreen/widgets/imagePreview.dart';
import 'package:flutter/material.dart';
import '../../exports.dart';

class PeopleList extends StatelessWidget{
  @override
  const PeopleList({
    required this.viewModel,
    super.key});

  final ConceptScreenModel viewModel;

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.25,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.55,
        left: getWidth(context) * 0.05,
        right: getWidth(context) * 0.05,
        bottom: getHeight(context) * 0.05
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: viewModel.people.length,
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              imagePreview(context, viewModel, index);
            },
              child : Container(
                height: getWidth(context) > 500 ?  getHeight(context) * 0.2 : getHeight(context) * 0.2,
                width: getWidth(context) > 500 ? getWidth(context) * 0.2 : getWidth(context) * 0.4,
                margin: EdgeInsets.only(
                  left: getWidth(context) > 500 ? getWidth(context) * 0.15 : getWidth(context) * 0.05,
                  top: getHeight(context) * 0.025,
                  bottom: getHeight(context) * 0.025,
                  right: index == viewModel.people.length - 1 ?  getWidth(context) * 0.05 : 0.0
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(viewModel.people[index]),
                    fit: BoxFit.fitHeight
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5), blurStyle: BlurStyle.normal, blurRadius: 3.0, spreadRadius: 3.0, offset: Offset.zero)]
                ),
              ),
          );
        }
      ),
    );
  }
}