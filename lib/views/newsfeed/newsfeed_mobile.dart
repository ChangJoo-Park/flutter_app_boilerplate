part of newsfeed_view;

class _NewsfeedMobile extends StatelessWidget {
  final NewsfeedViewModel viewModel;
  final ScrollController _scrollViewController = ScrollController();

  _NewsfeedMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollViewController,
          slivers: <Widget>[
            _buildSliverAppBar(context),
            SliverList(delegate: new SliverChildListDelegate(_buildList(50))),
          ],
        ),
      ),
    );
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      stretch: false,
      floating: false,
      pinned: false,
      title: Text('Newsfeed'),
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
    );
  }

  List _buildList(int count) {
    List<Widget> listItems = List();

    for (int i = 0; i < count; i++) {
      listItems.add(new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Text('Item ${i.toString()}',
              style: new TextStyle(fontSize: 25.0))));
    }

    return listItems;
  }
}
