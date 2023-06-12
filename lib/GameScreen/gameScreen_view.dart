import 'package:cards_pocket_event/GameScreen/widgets/playBanner.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../exports.dart';

class GameScreenView extends StackedView<GameScreenModel>{
  @override
  const GameScreenView({super.key});

  @override
  Widget builder(
      BuildContext context,
      GameScreenModel viewModel,
      Widget? child
      ){

    if(!viewModel.isModelReady){
      viewModel.currentPageCountDown(context, viewModel.countDown);
      viewModel.isModelReady = true;
      viewModel.notifyListeners();
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background Theme
          BackgroundTheme(),

          // Container Box
          ContainerBox(),

          // PlayBanner
          PlayBanner(),

          // Return Button
          ReturnButton(viewModel: viewModel,),

        ],
      ),
    );
  }

  @override
  GameScreenModel viewModelBuilder(BuildContext context) => GameScreenModel();

}