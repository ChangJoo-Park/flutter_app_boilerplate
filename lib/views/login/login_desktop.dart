part of login_view;

class _LoginDesktop extends StatelessWidget {
  final LoginViewModel viewModel;

  _LoginDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('LoginDesktop')),
    );
  }
}