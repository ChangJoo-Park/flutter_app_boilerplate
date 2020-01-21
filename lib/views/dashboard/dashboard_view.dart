library dashboard_view;

import 'package:flutter/rendering.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'dashboard_view_model.dart';

part 'dashboard_mobile.dart';
part 'dashboard_tablet.dart';
part 'dashboard_desktop.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DashboardViewModel viewModel = DashboardViewModel();
    return ViewModelProvider<DashboardViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _DashboardMobile(viewModel),
            desktop: _DashboardDesktop(viewModel),
            tablet: _DashboardTablet(viewModel),
          );
        });
  }
}
