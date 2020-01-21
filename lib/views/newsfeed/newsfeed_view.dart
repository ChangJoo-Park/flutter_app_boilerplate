library newsfeed_view;

import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'newsfeed_view_model.dart';

part 'newsfeed_mobile.dart';
part 'newsfeed_tablet.dart';
part 'newsfeed_desktop.dart';

class NewsfeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NewsfeedViewModel viewModel = NewsfeedViewModel();
    return ViewModelProvider<NewsfeedViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _NewsfeedMobile(viewModel),
          desktop: _NewsfeedDesktop(viewModel),
          tablet: _NewsfeedTablet(viewModel),  
        );
      }
    );
  }
}