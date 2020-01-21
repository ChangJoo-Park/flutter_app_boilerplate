part of search_view;

// Test Data
List mockData = nouns.take(1000).toList();

class SearchMobile extends StatefulWidget {
  final SearchViewModel viewModel;

  SearchMobile(this.viewModel);

  @override
  _SearchMobileState createState() => _SearchMobileState();
}

class _SearchMobileState extends State<SearchMobile> {
  final TextEditingController _filter = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  String _searchText = "";
  List<String> names = List();
  List filteredNames = List();
  Icon _searchIcon = Icon(Icons.search);
  Widget _appBarTitle = Text('Search');

  @override
  void initState() {
    names = mockData;
    filteredNames = mockData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ListView.builder(
        itemCount: filteredNames.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(filteredNames[index]),
          );
        },
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      title: _appBarTitle,
      leading: IconButton(
        icon: _searchIcon,
        onPressed: _searchPressed,
      ),
    );
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = Icon(Icons.close);
        this._appBarTitle = TextField(
          focusNode: _focusNode,
          controller: _filter,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
          decoration: InputDecoration(
              hintText: 'Something to find...',
              hintStyle: TextStyle(color: Colors.white54, fontSize: 20.0)),
          onChanged: (String value) {
            List found = names.where((n) => n.contains(value)).toList();
            setState(() {
              _searchText = value;
              filteredNames = found;
            });
          },
        );
        Future.delayed(Duration(milliseconds: 300), () {
          _focusNode.requestFocus();
        });
      } else {
        this._searchIcon = Icon(Icons.search);
        this._appBarTitle = Text('Search');
        filteredNames = names;
        _filter.clear();
      }
    });
  }
}
