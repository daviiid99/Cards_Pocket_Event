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
    return Scaffold(
      body: Stack(
        children: [
          // Background Theme
          BackgroundTheme(),

          // Container Box
          ContainerBox(),

          // Return Button
          ReturnButton(viewModel: viewModel,),

        ],
      ),
    );
  }

  @override
  GameScreenModel viewModelBuilder(BuildContext context) => GameScreenModel();

}