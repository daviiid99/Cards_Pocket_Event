import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.2,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.85,
        bottom: getHeight(context) * 0.01
      ),
      child: ListView(
      scrollDirection: Axis.vertical,
        children : const [
          Text("©2023 CARDS Pocket\nTodos los derechos reservados\n©daviiid99", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        ]
      ),
    );
  }
}