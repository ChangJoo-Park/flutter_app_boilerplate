part of search_view;

class SearchTablet extends StatelessWidget {
  final SearchViewModel viewModel;

  SearchTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SearchTablet')),
    );
  }
}
