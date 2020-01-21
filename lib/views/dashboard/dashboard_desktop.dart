part of dashboard_view;

class _DashboardDesktop extends StatelessWidget {
  final DashboardViewModel viewModel;

  _DashboardDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('DashboardDesktop')),
    );
  }
}