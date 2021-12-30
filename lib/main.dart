/*
 * flutter_demo_mac 
 * main.dart 
 * 
 * Created by YueChen on 2021/12/27.
 */

import 'package:flutter/material.dart';
import 'package:flutter_demo_mac/common/route/app_pages.dart';
import 'package:flutter_demo_mac/common/bindings/app_bindings.dart';
import 'package:get/get.dart';

/// 创建命令
/// flutter create --platforms=macos flutter_demo_mac

void main() {
  runApp(RootWidget());
}

// void main() => runApp(GetMaterialApp(home: MainTabbarPage()));

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: AppBindings(),
    );
  }
}
