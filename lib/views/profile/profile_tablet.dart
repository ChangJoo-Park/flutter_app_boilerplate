part of profile_view;

class _ProfileTablet extends StatelessWidget {
  final ProfileViewModel viewModel;

  _ProfileTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ProfileTablet')),
    );
  }
}