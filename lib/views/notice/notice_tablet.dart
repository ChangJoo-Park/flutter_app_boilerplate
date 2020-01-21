part of notice_view;

class _NoticeTablet extends StatelessWidget {
  final NoticeViewModel viewModel;

  _NoticeTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NoticeTablet')),
    );
  }
}