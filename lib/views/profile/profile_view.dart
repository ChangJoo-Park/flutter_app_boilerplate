library profile_view;

import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'profile_view_model.dart';

part 'profile_mobile.dart';
part 'profile_tablet.dart';
part 'profile_desktop.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProfileViewModel viewModel = ProfileViewModel();
    return ViewModelProvider<ProfileViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _ProfileMobile(viewModel),
          desktop: _ProfileDesktop(viewModel),
          tablet: _ProfileTablet(viewModel),  
        );
      }
    );
  }
}