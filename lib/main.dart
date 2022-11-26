import 'package:demojomjai/state_mobile/main_home_mobile.dart';
import 'package:demojomjai/state_website/dashboard_website.dart';
import 'package:demojomjai/utility/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

var getPages = <GetPage<dynamic>>[
  GetPage(
    name: AppConstant.pageDashBoardWebsite,
    page: () => const DashBoardWebsite(),
  ),
  GetPage(
    name: AppConstant.pageMainHomeMobile,
    page: () => const MainHomeMobile(),
  ),
];

String? initialPage;

void main() {
  if (kIsWeb) {
    //WebSite
    initialPage = AppConstant.pageDashBoardWebsite;
    runApp(const MyApp());
  } else {
    //Mobile
    initialPage = AppConstant.pageMainHomeMobile;
    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: getPages,
      initialRoute: initialPage,
    );
  }
}
