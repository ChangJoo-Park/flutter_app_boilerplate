part of newsfeed_view;

class _NewsfeedDesktop extends StatelessWidget {
  final NewsfeedViewModel viewModel;

  _NewsfeedDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NewsfeedDesktop')),
    );
  }
}