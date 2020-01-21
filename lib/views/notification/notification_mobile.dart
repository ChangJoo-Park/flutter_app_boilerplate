part of notification_view;

class _NotificationMobile extends StatelessWidget {
  final NotificationViewModel viewModel;

  _NotificationMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Container(
        child: Placeholder(),
      ),
    );
  }
}
