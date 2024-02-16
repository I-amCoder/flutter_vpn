import 'package:counter_app/core/providers/skeleton_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final skeleton = Provider.of<SkeletonProvider>(context);

    return BottomNavigationBar(
      items: skeleton.items.map((item) {
        return BottomNavigationBarItem(
            icon: item["icon"], label: item["title"]);
      }).toList(),
      currentIndex: skeleton.screen,
      onTap: (value) {
        skeleton.switchscreen(value);
      },
    );
  }
}
