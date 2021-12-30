/*
 * flutter_demo_mac 
 * news_net.dart 
 * 
 * Created by YueChen on 2021/12/28.
 */

import 'dart:convert';
import 'package:dio/dio.dart';

/// 网络请求
class HttpService {
  static Future<Map<String, dynamic>> getNews() async {
    var response = await Dio().get(
        "http://apis.juhe.cn/fapig/douyin/billboard?type=hot_video&size=50&key=9eb8ac7020d9bea6048db1f4c6b6d028");
    return jsonDecode(response.toString());
  }
}
