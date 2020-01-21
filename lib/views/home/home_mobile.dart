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
            return <Widget>[
              _buildSliverAppBar(),
            ];
          },
          body: Container(),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.bug_report),
        onPressed: () {
          widget.viewModel.isDebug = !widget.viewModel.isDebug;
        },
        backgroundColor: widget.viewModel.isDebug ? Colors.red : Colors.black,
      ),
    );
  }

  SliverAppBar _buildSliverAppBar() {
    return SliverAppBar(
      stretch: false,
      floating: false,
      pinned: false,
      title: Text('My App'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).pushNamed('setting');
            }),
        IconButton(icon: Icon(Icons.notifications_none), onPressed: () {}),
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      selectedIconTheme: IconThemeData(color: Colors.black),
      fixedColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.viewModel.currentTabIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.menu), title: Text('Newsfeed')),
        BottomNavigationBarItem(icon: Icon(Icons.create), title: Text('Write')),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite), title: Text('Alarm')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person), title: Text('Profile')),
      ],
      onTap: (int index) => widget.viewModel.tabIndex = index,
    );
  }
}
