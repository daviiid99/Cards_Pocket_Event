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
    return Scaffold(
      body : Stack(
        children: [
          // Background Theme
          BackgroundTheme(),

          // Container Box
          ContainerBox(),

          // Return Button
          ReturnButton(viewModel: viewModel,),

        ],
      )
    );
  }

  @override
  DistributionScreenModel viewModelBuilder(BuildContext context) => DistributionScreenModel();
}