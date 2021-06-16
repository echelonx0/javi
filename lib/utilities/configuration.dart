import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff1A1C20);
List<BoxShadow> shadowList = [
  BoxShadow(color: Color(0xffFAF1E6), blurRadius: 30, offset: Offset(0, 10))
];

List<Map> drawerItems = [
  {'icon': FontAwesomeIcons.grin, 'title': 'Profile', 'route': 'settings'},
  {'icon': Icons.account_balance, 'title': 'Account', 'route': 'landing'},
  {'icon': FontAwesomeIcons.plus, 'title': 'New Job', 'route': 'settings'},
  {'icon': Icons.favorite, 'title': 'Saved', 'route': 'settings'},
  {'icon': Icons.mail, 'title': 'Messages', 'route': 'messages'},
  {'icon': FontAwesomeIcons.userAlt, 'title': 'About', 'route': 'about'},
];
