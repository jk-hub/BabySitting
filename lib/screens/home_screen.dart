import 'package:babySitting/screens/dashboard.dart';
import 'package:babySitting/widget/hidden_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DrawerScreen(),
          DashbaordScreen(),
        ],
      ),
    );
  }
}
