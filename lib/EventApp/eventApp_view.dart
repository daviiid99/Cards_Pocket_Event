import 'package:cards_pocket_event/EventApp/eventApp_model.dart';
import 'package:cards_pocket_event/EventApp/widgets/bannerHome.dart';
import 'package:cards_pocket_event/exports.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EventAppView extends StackedView<EventAppModel>{
  @override
  const EventAppView({super.key});

  @override
  Widget builder(
      BuildContext context,
      EventAppModel viewModel,
      Widget? child
      ){
    return Scaffold(
      body : Stack(
        children: [
          // Background Theme
          BackgroundTheme(),

          // Banner
          BannerHome(),

          // Volume Switcher
          VolumeButton(viewModel: viewModel),

          // Source Code
          SourceButton(),

          // Entries
          EntriesWidget(viewModel: viewModel),

          // Footer
          FooterWidget(),

          // Check Device Screen
          if (getWidth(context) > 500)
            DeviceNotSupportedScreen(),

        ],
      )
    );
  }

  @override
  EventAppModel viewModelBuilder(BuildContext context) => EventAppModel();
}