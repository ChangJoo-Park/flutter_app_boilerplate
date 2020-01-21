part of home_view;

class _HomeMobile extends StatefulWidget {
  final HomeViewModel viewModel;

  _HomeMobile(this.viewModel);

  @override
  __HomeMobileState createState() => __HomeMobileState();
}

class __HomeMobileState extends State<_HomeMobile> {
  Logger _log = getLogger('HomeMobileView');
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _bottomNavigationOptions;

  @override
  void initState() {
    _bottomNavigationOptions = <Widget>[
      DashboardView(),
      NewsfeedView(),
      Text(
        'Write. TODO',
        style: optionStyle,
      ),
      NoticeView(),
      ProfileView()
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _bottomNavigationOptions
            .elementAt(widget.viewModel.currentTabIndex),
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
