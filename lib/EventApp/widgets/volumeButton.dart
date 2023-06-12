import '../../exports.dart';
import 'package:flutter/material.dart';

class VolumeButton extends StatelessWidget{
  @override
  const VolumeButton({
    required this.viewModel,
    super.key
});

  final EventAppModel viewModel;


  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.2,
      width: getWidth(context) * 0.2,
      margin: EdgeInsets.only(
        left: getWidth(context) * 0.01,
        right: getWidth(context) * 0.9,
        bottom: getHeight(context) * 0.9
      ),
      child: IconButton(
        style: IconButton.styleFrom(
          backgroundColor: Colors.white
        ),
        onPressed: (){
          viewModel.isMusicPaused ?
              viewModel.isMusicPaused = false :
              viewModel.isMusicPaused = true;
          if (viewModel.isMusicPaused) viewModel.player.pause();
          if (!viewModel.isMusicPaused) viewModel.player.resume();
          viewModel.notifyListeners();
        },
        icon: Icon(viewModel.isMusicPaused ? Icons.volume_off_rounded :  Icons.volume_up_rounded, color: Colors.white, size: 45,),
      ),
    );
  }
}