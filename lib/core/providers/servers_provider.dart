import 'package:flutter/material.dart';

class ServerProvider extends ChangeNotifier {
  final List<String> _servers = [
    "Server 1",
    "Server 2",
    "Server 3",
  ];

  bool _isConnected = false;

  String _selectedServer;

  ServerProvider() : _selectedServer = "Server 1";

  List<String> get servers => _servers;
  String get selectedServer => _selectedServer;
  bool get isConnected => _isConnected;

  void changeServer(String server) {
    if (_servers.contains(server)) {
      _selectedServer = server;
      _isConnected = false;
      notifyListeners();
    }
  }

  void toggleConnect() {
    _isConnected = !_isConnected;
    notifyListeners();
  }
}
