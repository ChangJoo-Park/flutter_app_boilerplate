import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {
  static String root = '/';
  static String login = 'login';
  static String setting = 'setting';
  static String search = 'search';

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('ROUTE WAS NOT FOUND !!!');
    });
    router.define(root, handler: rootHandler);
    router.define(login, handler: loginHandler);
    router.define(setting, handler: settingHandler);
    router.define(search, handler: searchHandler);
  }
}
