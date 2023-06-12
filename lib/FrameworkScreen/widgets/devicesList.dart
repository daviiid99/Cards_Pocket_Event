import 'package:cards_pocket_event/FrameworkScreen/widgets/selectedDeviceList.dart';
import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';

class DevicesList extends StatelessWidget{
  @override
  const DevicesList({
    required this.viewModel,
    super.key
});
  
  final FrameworkScreenModel viewModel;
  
  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.55,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.3,
        left: getWidth(context) * 0.1,
        right: getWidth(context) * 0.1,
        bottom: getHeight(context) * 0.2
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: viewModel.devicesImage.length,
          itemBuilder: (context, index){
            return InkWell(
              onTap: (){
              showSelectedList(context, viewModel.devicesStr[index], viewModel);
                },
                child : Container(
                  height: getHeight(context) * 0.5,
                  width: getWidth(context) * 0.6,
                  margin: EdgeInsets.only(
                    top: getHeight(context) * 0.05,
                    bottom: getHeight(context) * 0.05,
                    left: getWidth(context) * 0.05,
                    right: index == viewModel.devicesImage.length - 1 ? getWidth(context) * 0.05 : 0.0
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 3.0, spreadRadius: 1.0, blurStyle: BlurStyle.normal, offset: Offset.zero)]
                  ),
                  child: Container(
                    height:  getHeight(context) * 0.47,
                    width: getWidth(context) * 0.57,
                    margin: EdgeInsets.only(
                      top: getHeight(context) * 0.015,
                      bottom: getHeight(context) * 0.015,
                      left: getWidth(context) * 0.015,
                      right: getWidth(context) * 0.015
                   ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(viewModel.devicesImage[index]),
                        fit: BoxFit.fitHeight
                      )
                    ),
                ),
              ),
          );
        }
      ),
    );
  }
  
}