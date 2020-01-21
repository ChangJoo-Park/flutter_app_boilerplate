library search_view;

import 'package:english_words/english_words.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'search_view_model.dart';

part 'search_mobile.dart';
part 'search_tablet.dart';
part 'search_desktop.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SearchViewModel viewModel = SearchViewModel();
    return ViewModelProvider<SearchViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: SearchMobile(viewModel),
            desktop: SearchDesktop(viewModel),
            tablet: SearchTablet(viewModel),
          );
        });
  }
}
