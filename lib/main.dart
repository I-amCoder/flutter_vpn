import 'package:counter_app/screens/home.dart';
import 'package:counter_app/screens/vpn_servers.dart';
import 'package:counter_app/core/providers/skeleton_provider.dart';
import 'package:counter_app/widgets/layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SkeletonProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer<SkeletonProvider>(
          builder: (context, provider, _) {
            return Layout(title: provider.title, screen: provider.getscreen);
          },
        ),
      ),
    );
  }
}
