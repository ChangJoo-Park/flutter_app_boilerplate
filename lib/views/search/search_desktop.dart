part of search_view;

class _SearchDesktop extends StatelessWidget {
  final SearchViewModel viewModel;

  _SearchDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SearchDesktop')),
    );
  }
}