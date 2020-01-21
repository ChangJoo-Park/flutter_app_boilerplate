part of notification_view;

class _NotificationDesktop extends StatelessWidget {
  final NotificationViewModel viewModel;

  _NotificationDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NotificationDesktop')),
    );
  }
}