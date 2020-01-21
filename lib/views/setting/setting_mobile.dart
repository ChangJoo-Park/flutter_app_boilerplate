part of setting_view;

class _SettingMobile extends StatelessWidget {
  final SettingViewModel viewModel;

  _SettingMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SafeArea(
        child: SettingsList(
          sections: [
            SettingsSection(
              title: 'Common',
              tiles: [
                SettingsTile(
                  title: 'Language',
                  subtitle: viewModel.language,
                  leading: Icon(Icons.language),
                  onTap: () {},
                ),
              ],
            ),
            SettingsSection(
              title: 'Account',
              tiles: [
                SettingsTile(
                  title: 'Phone Number',
                  subtitle: '+82 000-0000-0000',
                  leading: Icon(Icons.language),
                  onTap: () {},
                ),
                SettingsTile(
                  title: 'Email',
                  subtitle: 'pcjpcj2@gmail.com',
                  leading: Icon(Icons.email),
                  onTap: () {},
                ),
                SettingsTile(
                  title: 'Sign Out',
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('login');
                  },
                ),
              ],
            ),
            SettingsSection(
              title: 'Security',
              tiles: [
                SettingsTile.switchTile(
                  title: 'Use fingerprint',
                  leading: Icon(Icons.fingerprint),
                  switchValue: false,
                  onToggle: (bool value) {},
                ),
                SettingsTile(
                  title: 'Change Password',
                  leading: Icon(Icons.lock),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
