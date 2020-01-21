part of home_view;

class _HomeMobile extends StatefulWidget {
  final HomeViewModel viewModel;

  _HomeMobile(this.viewModel);

  @override
  __HomeMobileState createState() => __HomeMobileState();
}

class __HomeMobileState extends State<_HomeMobile> {
  ScrollController _scrollViewController;
  Logger _log = getLogger('HomeMobileView');

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            _log.d('innerBoxIsScrolled -> $innerBoxIsScrolled');
            return <Widget>[
              _buildSliverAppBar(),
            ];
          },
          body: Container(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.bug_report),
        onPressed: () {
          widget.viewModel.isDebug = !widget.viewModel.isDebug;
        },
        backgroundColor: widget.viewModel.isDebug ? Colors.red : Colors.black,
      ),
    );
  }
}

SliverAppBar _buildSliverAppBar() {
  return SliverAppBar(
    stretch: false,
    floating: false,
    pinned: false,
    title: Text(
      'My App',
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.search), onPressed: () {}),
      IconButton(icon: Icon(Icons.settings), onPressed: () {}),
      IconButton(icon: Icon(Icons.notifications_none), onPressed: () {}),
    ],
  );
}
