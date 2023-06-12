import 'package:flutter/material.dart';
import '../exports.dart';

class TimerWidget extends StatelessWidget{
  @override
  const TimerWidget({
    required this.viewModel,
    super.key
});

  final viewModel;

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.2,
      width: getWidth(context) * 0.4,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.0025,
        bottom: getHeight(context) * 0.85,
        left: getWidth(context) * 0.3,
        right: getWidth(context) * 0.3
      ),
      child: Text(viewModel.countDown.toString(), style: const TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
    );
  }
}