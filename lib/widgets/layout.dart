import 'package:counter_app/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final String title;
  final Widget screen;
  const Layout({Key? key, required this.title, required this.screen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: screen,
      bottomNavigationBar: const BottomNav(),
    );
  }
}
