library setting_view;

import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'setting_view_model.dart';

part 'setting_mobile.dart';
part 'setting_tablet.dart';
part 'setting_desktop.dart';

class SettingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingViewModel viewModel = SettingViewModel();
    return ViewModelProvider<SettingViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _SettingMobile(viewModel),
            desktop: _SettingDesktop(viewModel),
            tablet: _SettingTablet(viewModel),
          );
        });
  }
}
