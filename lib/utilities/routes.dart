import 'package:flutter/material.dart';
import 'package:vc_app/screens/faq.dart';
import 'package:vc_app/screens/messages.dart';
import 'package:vc_app/screens/settings_screen.dart';
import 'package:vc_app/screens/welcome_concierge.dart';

var customRoutes = <String, WidgetBuilder>{
  '/settings': (BuildContext context) => SettingsScreen(),
  '/landing': (BuildContext context) => WelcomeScreen(),
  '/messages': (BuildContext context) => MessagesScreen(),
  '/about': (BuildContext context) => AboutScreen(),
};
