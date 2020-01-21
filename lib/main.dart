import 'package:fluro/fluro.dart';
import 'package:program_app/config/application.dart';
import 'package:program_app/config/routes.dart';

import 'core/locator.dart';
import 'core/providers.dart';
import 'core/services/navigator_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  await LocatorInjector.setupLocator();
  runApp(MainApplication());
}

class MainApplication extends StatefulWidget {
  @override
  _MainApplicationState createState() => _MainApplicationState();
}

class _MainApplicationState extends State<MainApplication> {
  _MainApplicationState() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderInjector.providers,
      child: MaterialApp(
        initialRoute: 'login',
        onGenerateRoute: Application.router.generator,
      ),
    );
  }
}