import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../exports.dart';
import '../control.dart';

class ConceptScreenView extends StackedView<ConceptScreenModel>{
  @override
  const ConceptScreenView({super.key});

  @override
  Widget builder(
      BuildContext context,
      ConceptScreenModel viewModel,
      Widget? child
      ){

    if (!viewModel.isModelReady){
      viewModel.context = context;
      viewModel.isModelReady = true;
      viewModel.notifyListeners();
      viewModel.currentPageCountDown(context, viewModel.countDown);
    }

    return Scaffold(
      body : Stack(
        children: [
          // Background Theme
          const BackgroundTheme(),

          // Container
          ContainerBox(),

          // Timer
          TimerWidget(viewModel: viewModel,),

          // Slogan
          SloganWidget(),

          // People List
          PeopleList(viewModel: viewModel),

          // Return button
          ReturnButton(viewModel: viewModel,)


        ],
      )
    );
  }

  @override
  ConceptScreenModel viewModelBuilder(BuildContext context) => ConceptScreenModel();


}