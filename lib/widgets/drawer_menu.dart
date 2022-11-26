import 'package:demojomjai/utility/app_constant.dart';
import 'package:demojomjai/utility/app_controller.dart';
import 'package:demojomjai/widgets/drawer_list_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: AppController(),
        builder: (AppController appController) {
          return Drawer(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppConstant.appPadding),
                  child: Image.asset("assets/images/logowithtext.png"),
                ),
                DrawerListTile(
                    title: 'Dash Board ${appController.indexDrawer}',
                    svgSrc: 'assets/icons/Dashboard.svg',
                    tap: () {
                      print('You Click Dash Board');
                      appController.indexDrawer.value = 0;
                    }),
                DrawerListTile(
                    title: 'Blog Post',
                    svgSrc: 'assets/icons/BlogPost.svg',
                    tap: () {
                       appController.indexDrawer.value = 1;
                    }),
                DrawerListTile(
                    title: 'Message',
                    svgSrc: 'assets/icons/Message.svg',
                    tap: () {
                       appController.indexDrawer.value = 2;
                    }),
                DrawerListTile(
                    title: 'Statistics',
                    svgSrc: 'assets/icons/Statistics.svg',
                    tap: () {
                       appController.indexDrawer.value = 3;
                    }),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstant.appPadding * 2),
                  child: Divider(
                    color: AppConstant.grey,
                    thickness: 0.2,
                  ),
                ),
                DrawerListTile(
                    title: 'Settings',
                    svgSrc: 'assets/icons/Setting.svg',
                    tap: () {}),
                DrawerListTile(
                    title: 'Logout',
                    svgSrc: 'assets/icons/Logout.svg',
                    tap: () {}),
              ],
            ),
          );
        });
  }
}
