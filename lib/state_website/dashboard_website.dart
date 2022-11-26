import 'package:demojomjai/state_website/widget_dashboard_mobile.dart';
import 'package:demojomjai/state_website/widget_dashboard_tablet.dart';
import 'package:demojomjai/state_website/widget_dashboard_website.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashBoardWebsite extends StatelessWidget {
  const DashBoardWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenTypeLayout(
          mobile: const WidgetDashboardMobile(),
          tablet: const WidgetDashboardTablet(),
          desktop: const WidgetDashboardWebsite(),
        ),
      ),
    );
  }
}
