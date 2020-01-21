part of dashboard_view;

class _DashboardMobile extends StatelessWidget {
  final DashboardViewModel viewModel;

  _DashboardMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double gridHeight = screenSize.height / 12;
    double blockWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: gridHeight * 3,
                child: Placeholder(),
              ),
              Container(
                height: gridHeight * 3,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Placeholder()),
                    Expanded(child: Placeholder()),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: gridHeight * 1,
                      child: Placeholder(),
                    ),
                    Expanded(
                      flex: 1,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: blockWidth / 2.3,
                            child: Placeholder(),
                          ),
                          Container(
                            width: blockWidth / 2.3,
                            child: Placeholder(),
                          ),
                          Container(
                            width: blockWidth / 2.3,
                            child: Placeholder(),
                          ),
                          Container(
                            width: blockWidth / 2.3,
                            child: Placeholder(),
                          ),
                          Container(
                            width: blockWidth / 2.3,
                            child: Placeholder(),
                          ),
                          Container(
                            width: blockWidth / 2.3,
                            child: Placeholder(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
