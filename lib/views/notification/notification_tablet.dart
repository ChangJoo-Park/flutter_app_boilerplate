part of notification_view;

class _NotificationTablet extends StatelessWidget {
  final NotificationViewModel viewModel;

  _NotificationTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NotificationTablet')),
    );
  }
}