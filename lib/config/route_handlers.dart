import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:program_app/views/home/home_view.dart';
import 'package:program_app/views/login/login_view.dart';
import 'package:program_app/views/notification/notification_view.dart';
import 'package:program_app/views/search/search_view.dart';
import 'package:program_app/views/setting/setting_view.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomeView();
});

var loginHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LoginView();
});

var settingHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SettingView();
});

var searchHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SearchView();
});

var notificationHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return NotificationView();
});
