import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:program_app/views/home/home_view.dart';
import 'package:program_app/views/login/login_view.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomeView();
});


var loginHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LoginView();
});