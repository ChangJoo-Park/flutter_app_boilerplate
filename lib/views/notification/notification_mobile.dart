part of notification_view;

class _NotificationMobile extends StatelessWidget {
  final NotificationViewModel viewModel;

  _NotificationMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NotificationMobile')),
    );
  }
}