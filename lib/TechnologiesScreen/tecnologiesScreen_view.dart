import 'package:cards_pocket_event/TechnologiesScreen/widgets/utilsList.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../exports.dart';

class TechnologiesScreenView extends StackedView<TechnologiesScreenModel>{
  @override
  const TechnologiesScreenView({super.key});

  @override
  Widget builder(
      BuildContext context,
      TechnologiesScreenModel viewModel,
      Widget? child
      ){

    if (!viewModel.isModelReady){
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

          // Banner
          TechnologyBanner(),

          // Timer
          TimerWidget(viewModel: viewModel),

          // List of techs
          UtilsList(viewModel: viewModel),

          // Return Button
          ReturnButton(viewModel: viewModel,),

        ],
      ),
    );
  }

  @override
  TechnologiesScreenModel viewModelBuilder(BuildContext context) => TechnologiesScreenModel();
}