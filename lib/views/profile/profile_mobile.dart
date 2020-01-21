part of profile_view;

class _ProfileMobile extends StatelessWidget {
  final ProfileViewModel viewModel;

  _ProfileMobile(this.viewModel);
  final ScrollController _scrollViewController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollViewController,
          slivers: <Widget>[
            SliverAppBar(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  child: Text('JD'),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Do something
                  },
                ),
              ],
              expandedHeight: 220.0,
              floating: true,
              pinned: true,
              snap: true,
              elevation: 50,
              backgroundColor: Colors.blue,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                title: Text(
                  'John Doe',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                background: Image.network(
                  'https://images.unsplash.com/photo-1529160638848-c6c71fee1cb7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => ListTile(
                  title: Text("Index: $index"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
