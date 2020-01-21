part of newsfeed_view;

class _NewsfeedMobile extends StatelessWidget {
  final NewsfeedViewModel viewModel;

  _NewsfeedMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NewsfeedMobile')),
    );
  }
}