library login_view;

import 'package:program_app/widgets/circle_icon_button.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'login_view_model.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

part 'login_mobile.dart';
part 'login_tablet.dart';
part 'login_desktop.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginViewModel viewModel = LoginViewModel();
    return ViewModelProvider<LoginViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _LoginMobile(viewModel),
          desktop: _LoginDesktop(viewModel),
          tablet: _LoginTablet(viewModel),
        );
      },
    );
  }
}
