import 'package:flutter/material.dart';
import '../resize.dart';
import '../control.dart';

class ReturnButton extends StatelessWidget{
  @override
  const ReturnButton({
    required this.viewModel,
    super.key});
  
  final viewModel;

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.maxFinite,
      height: getHeight(context) * 0.07,
      margin: EdgeInsets.only(
        left: getWidth(context) * 0.1,
        right: getWidth(context) * 0.1,
        top: getHeight(context) * 0.9,
        bottom: getHeight(context) * 0.02
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child : TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blueAccent
        ),
        onPressed: (){
          viewModel.manualExit(context);
        },
        child: const Text("Cerrar", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}