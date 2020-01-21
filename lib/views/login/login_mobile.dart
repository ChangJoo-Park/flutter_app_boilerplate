part of login_view;

class _LoginMobile extends StatelessWidget {
  final LoginViewModel viewModel;

  _LoginMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double gridHeight = screenSize.height / 12;
    double blockWidth = screenSize.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _buildAboveContainer(blockWidth, gridHeight),
              Expanded(
                child: _buildBottomContainer(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildAboveContainer(double blockWidth, double gridHeight) {
    return Container(
      width: blockWidth,
      height: gridHeight * 6,
      child: Placeholder(),
    );
  }

  Container _buildBottomContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FittedBox(
            child: Text(
              'Sign In With Social Media',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
          SizedBox(height: 32.0),
          _buildSocialLoginRow(context),
          SizedBox(height: 32.0),
          FittedBox(
            child: FlatButton(
              child: Text(
                'Or with an Email.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Row _buildSocialLoginRow(BuildContext context) {
    // TODO: Need handle for login
    final VoidCallback onTap = () {
      Navigator.pushReplacementNamed(context, '/');
    };
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CircleIconButton(
          backgroundColor: Colors.red,
          icon: Icon(
            AntDesign.google,
            color: Colors.white,
          ),
          onTap: onTap,
        ),
        CircleIconButton(
          backgroundColor: Colors.blueAccent,
          icon: Icon(
            AntDesign.facebook_square,
            color: Colors.white,
          ),
          onTap: onTap,
        ),
        CircleIconButton(
          backgroundColor: Colors.deepOrangeAccent,
          icon: Icon(
            AntDesign.instagram,
            color: Colors.white,
          ),
          onTap: onTap,
        ),
        CircleIconButton(
          backgroundColor: Colors.blue,
          icon: Icon(
            AntDesign.twitter,
            color: Colors.white,
          ),
          onTap: onTap,
        ),
      ],
    );
  }
}
