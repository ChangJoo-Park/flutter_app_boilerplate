part of profile_view;

class _ProfileDesktop extends StatelessWidget {
  final ProfileViewModel viewModel;

  _ProfileDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ProfileDesktop')),
    );
  }
}