library notice_view;

import 'package:english_words/english_words.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'notice_view_model.dart';

part 'notice_mobile.dart';
part 'notice_tablet.dart';
part 'notice_desktop.dart';

class NoticeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NoticeViewModel viewModel = NoticeViewModel();
    return ViewModelProvider<NoticeViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _NoticeMobile(viewModel),
            desktop: _NoticeDesktop(viewModel),
            tablet: _NoticeTablet(viewModel),
          );
        });
  }
}
