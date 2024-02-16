import 'package:counter_app/screens/home.dart';
import 'package:counter_app/screens/vpn_servers.dart';
import 'package:flutter/material.dart';

class SkeletonProvider extends ChangeNotifier {
  int _screen = 0;

  final List<Widget> _screens = [const Home(), const VpnServers()];

  final List<Map<String, dynamic>> _items = [
    {"title": "Home", "icon": const Icon(Icons.home)},
    {"title": "Vpn Servers", "icon": const Icon(Icons.laptop)}
  ];

  int get screen => _screen;

  Widget get getscreen => _screens[_screen];

  String get title => _items[_screen]["title"];

  List<Map<String, dynamic>> get items => _items;

  void switchscreen(screen) {
    if (screen <= _screens.length && screen >= 0) {
      _screen = screen;
      notifyListeners();
    }
  }
}
