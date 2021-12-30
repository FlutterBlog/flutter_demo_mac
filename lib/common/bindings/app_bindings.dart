import 'package:get/get.dart';
import 'package:flutter_demo_mac/modules/news/controllers/news_controller.dart';

/// 所有的Binding层
class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewsController());
  }
}
