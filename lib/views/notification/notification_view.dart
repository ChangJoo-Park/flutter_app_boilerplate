library notification_view;

import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'notification_view_model.dart';

part 'notification_mobile.dart';
part 'notification_tablet.dart';
part 'notification_desktop.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NotificationViewModel viewModel = NotificationViewModel();
    return ViewModelProvider<NotificationViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _NotificationMobile(viewModel),
          desktop: _NotificationDesktop(viewModel),
          tablet: _NotificationTablet(viewModel),  
        );
      }
    );
  }
}