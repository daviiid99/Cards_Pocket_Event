import 'package:cards_pocket_event/DistributionScreen/widgets/distributionBanner.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../exports.dart';

class DistributionScreenView extends StackedView<DistributionScreenModel>{
  @override
  const DistributionScreenView({super.key});

  @override
  Widget builder(
      BuildContext context,
      DistributionScreenModel viewModel,
      Widget? child
      ){

    if (!viewModel.isModelReady){
      viewModel.isModelReady = true;
      viewModel.notifyListeners();
      viewModel.currentPageCountDown(context, viewModel.countDown);
    }

    return Scaffold(
      body : Stack(
        children: [
          // Background Theme
          BackgroundTheme(),

          // Container Box
          ContainerBox(),

          // Timer
          TimerWidget(viewModel: viewModel),

          // Banner
          DistributionBanner(),

          // Dash Banner
          DashBanner(),

          // Codes List
          CodesList(),

          // Return Button
          ReturnButton(viewModel: viewModel,),

        ],
      )
    );
  }

  @override
  DistributionScreenModel viewModelBuilder(BuildContext context) => DistributionScreenModel();
}