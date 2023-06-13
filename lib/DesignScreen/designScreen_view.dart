import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../exports.dart';

class DesignScreenView extends StackedView<DesignScreenModel>{
  @override
  const DesignScreenView({super.key});

  @override
  Widget builder(
      BuildContext context,
      DesignScreenModel viewModel,
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
          DesignBanner(),

          // SubBanner
          DesignSubBanner(),

          // Timer
          TimerWidget(viewModel: viewModel),

          // Components
          ComponentsMaterial(viewModel: viewModel,),

          // Return button
          ReturnButton(viewModel: viewModel,),

        ],
      ),
    );
  }

  @override
  DesignScreenModel viewModelBuilder(BuildContext context) => DesignScreenModel();
}