import 'package:flutter/material.dart';
import '../../exports.dart';
import 'package:url_launcher/url_launcher.dart';

class SourceButton extends StatelessWidget{
  @override
  SourceButton({super.key});
  
  final url = Uri.parse("https://github.com/daviiid99/Cards_Pocket_Event");

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.2,
      width: getWidth(context) * 0.2,
      margin: EdgeInsets.only(
        bottom: getHeight(context) * 0.9,
        left: getWidth(context) * 0.8
      ),
      child: IconButton(
        onPressed: (){
          // Open in browser
          launchUrl(url);
        },
        icon: const Icon(Icons.code_rounded, color: Colors.white, size: 45,),
      ),
    );
  }
}