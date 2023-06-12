import 'package:cards_pocket_event/FrameworkScreen/widgets/bannerWidget.dart';
import 'package:cards_pocket_event/FrameworkScreen/widgets/devicesList.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../exports.dart';

class FrameworkScreenView extends StackedView<FrameworkScreenModel>{
  @override
  const FrameworkScreenView({super.key});

  @override
  Widget builder(
      BuildContext context,
      FrameworkScreenModel viewModel,
      Widget? child
      ){

    if (!viewModel.isModelReady){
      viewModel.currentPageCountDown(context, viewModel.countDown);
      viewModel.isModelReady = true;
      viewModel.notifyListeners();
    }

    return Scaffold(
      body: Stack(
        children  : [
          // Background Theme
          BackgroundTheme(),

          // Container Box
          ContainerBox(),

          // Timer
          TimerWidget(viewModel: viewModel),

          // Banner Widget
          BannerWidget(),

          // Devices List
          DevicesList(viewModel: viewModel,),

          // Return button
          ReturnButton(viewModel: viewModel,),

        ]
      ),
    );
  }

  @override
  FrameworkScreenModel viewModelBuilder(BuildContext context) => FrameworkScreenModel();
}