part of search_view;

class _SearchTablet extends StatelessWidget {
  final SearchViewModel viewModel;

  _SearchTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SearchTablet')),
    );
  }
}