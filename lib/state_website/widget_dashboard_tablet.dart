import 'package:demojomjai/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';

class WidgetDashboardTablet extends StatelessWidget {
  const WidgetDashboardTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerMenu(),
      body: Text('Show Website on Tablet'),
    );
  }
}
