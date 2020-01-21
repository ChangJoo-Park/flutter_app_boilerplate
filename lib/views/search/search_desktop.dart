part of search_view;

class SearchDesktop extends StatelessWidget {
  final SearchViewModel viewModel;

  SearchDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SearchDesktop')),
    );
  }
}
