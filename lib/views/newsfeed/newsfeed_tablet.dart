part of newsfeed_view;

class _NewsfeedTablet extends StatelessWidget {
  final NewsfeedViewModel viewModel;

  _NewsfeedTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NewsfeedTablet')),
    );
  }
}