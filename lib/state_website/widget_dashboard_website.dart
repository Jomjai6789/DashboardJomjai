import 'package:demojomjai/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';

class WidgetDashboardWebsite extends StatelessWidget {
  const WidgetDashboardWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      body: Row(
        children: [
          Expanded(child: DrawerMenu()),
          Expanded(flex: 5,
            child: Text('Show Website on Website'),
          ),
        ],
      ),
    );
  }
}
