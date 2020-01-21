part of search_view;

class _SearchMobile extends StatelessWidget {
  final SearchViewModel viewModel;

  _SearchMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SearchMobile')),
    );
  }
}