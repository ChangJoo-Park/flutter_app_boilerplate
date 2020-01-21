part of notice_view;

class _NoticeMobile extends StatelessWidget {
  final NoticeViewModel viewModel;

  _NoticeMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NoticeMobile')),
    );
  }
}