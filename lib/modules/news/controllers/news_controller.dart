/*
 * flutter_demo_mac 
 * news_controller.dart 
 * 
 * Created by YueChen on 2021/12/28.
 */

import 'package:flutter_demo_mac/modules/news/models/news_model.dart';
import 'package:flutter_demo_mac/common/net/dio_manager.dart';
import 'package:get/get.dart';

class NewsController extends GetxController {
  //Mark: -
  var isLoading = true;
  List<NewsModel> dataSource = [];

  @override
  void onInit() {
    requestData();
    super.onInit();
  }

  requestData() {
    DioManager().requestNet(
      "http://apis.juhe.cn/fapig/douyin/billboard",
      DioGet,
      params: {
        'type': 'hot_video',
        'size': '50',
        'key': '9eb8ac7020d9bea6048db1f4c6b6d028',
      },
      success: (result) {
        if (result is Map) {
          List list = result["result"];
          dataSource = List<NewsModel>.from(
            list.map((jsonMap) => NewsModel.fromJson(jsonMap)),
          );
          dataSource.removeAt(0);
        }

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
