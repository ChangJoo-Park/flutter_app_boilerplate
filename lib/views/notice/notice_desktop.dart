part of notice_view;

class _NoticeDesktop extends StatelessWidget {
  final NoticeViewModel viewModel;

  _NoticeDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NoticeDesktop')),
    );
  }
}