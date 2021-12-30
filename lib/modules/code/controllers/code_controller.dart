/*
 * flutter_demo_mac 
 * code_controller.dart 
 * 
 * Created by YueChen on 2021/12/28.
 */

import 'package:get/get.dart';
import 'package:flutter_demo_mac/common/net/net_utils.dart';

class CodeController extends GetxController {
  //Mark: -
  var isLoading = true;
  List<String> dataSource = [];

  @override
  void onInit() {
    requestData();
    super.onInit();
  }

  requestData() {
    NetUtils.requestSearch(
      "Flutter",
      success: (result) {
        isLoading = false;
        update();
      },
      error: (errorCode, errorMsg) {
        print(errorCode.toString() + " " + errorMsg);
        isLoading = false;
        update();
      },
    );
  }
}
