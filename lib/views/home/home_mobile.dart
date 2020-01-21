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
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Newsfeed',
      style: optionStyle,
    ),
    Text(
      'Index 2: Write',
      style: optionStyle,
    ),
    Text(
      'Index 3: Notice',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

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
          body: Center(
            child: _widgetOptions.elementAt(widget.viewModel.currentTabIndex),
          ),
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
            icon: Icon(Icons.favorite), title: Text('Notice')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person), title: Text('Profile')),
      ],
      onTap: (int index) => widget.viewModel.tabIndex = index,
    );
  }
}
