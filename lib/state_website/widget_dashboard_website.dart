import 'package:demojomjai/bodys/blogpost_body.dart';
import 'package:demojomjai/bodys/dashboard_body.dart';
import 'package:demojomjai/bodys/message.dart';
import 'package:demojomjai/bodys/statistics.dart';
import 'package:demojomjai/utility/app_controller.dart';
import 'package:demojomjai/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetDashboardWebsite extends StatefulWidget {
  const WidgetDashboardWebsite({super.key});

  @override
  State<WidgetDashboardWebsite> createState() => _WidgetDashboardWebsiteState();
}

class _WidgetDashboardWebsiteState extends State<WidgetDashboardWebsite> {
  var bodys = <Widget>[
    const DashBoardBody(),
    const BlogPostBody(),
    const Message(),
    const Statistics(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: AppController(),
        builder: (AppController appController) {
          return Scaffold(
            drawer: DrawerMenu(),
            body: Row(
              children: [
                Expanded(child: DrawerMenu()),
                Expanded(
                  flex: 5,
                  child: bodys[appController.indexDrawer.value],
                ),
              ],
            ),
          );
        });
  }
}
