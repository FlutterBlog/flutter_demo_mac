import 'package:flutter_demo_mac/modules/news/pages/news_page.dart';
import 'package:flutter_demo_mac/modules/code/pages/code_page.dart';
import 'package:flutter_demo_mac/modules/mine/pages/mine_page.dart';
import 'package:flutter_demo_mac/modules/root/pages/main_page.dart';

// import 'package:flutter_state_get/modules/home/bindings/count_bindings.dart';
import 'package:flutter_demo_mac/modules/news/controllers/news_controller.dart';

import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.Root;

  static final routes = [
    GetPage(
      name: Routes.Root,
      page: () => MainTabbarPage(),
    ),
    GetPage(
      name: Routes.News,
      page: () => NewsPage(),
      binding: BindingsBuilder(() => {Get.lazyPut(() => NewsController())}),
      children: [],
    ),
    GetPage(
      name: Routes.Code,
      page: () => CodePage(),
      children: [],
    ),
    GetPage(
      name: Routes.Mine,
      page: () => MinePage(),
      // binding: CountPageBinding(),
      // children: [
      //   GetPage(
      //     name: Routes.OTHER,
      //     page: () => OtherPage(),
      //   ),
      // ],
    ),
  ];
}
