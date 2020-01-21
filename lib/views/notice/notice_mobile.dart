part of notice_view;

class _NoticeMobile extends StatelessWidget {
  final NoticeViewModel viewModel;

  _NoticeMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notice'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.of(context).pushNamed('search');
              }),
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).pushNamed('setting');
              }),
          IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {
                Navigator.of(context).pushNamed('notification');
              }),
        ],
      ),
      body: ListView(
        children: nouns
            .take(100)
            .map((word) => ListTile(
                    title: Text(
                  word,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                )))
            .toList(),
      ),
    );
  }
}
