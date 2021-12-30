/*
 * flutter_demo_mac 
 * news_page.dart 
 * 
 * Created by YueChen on 2021/12/28.
 */
import 'package:flutter/material.dart';
import 'package:flutter_demo_mac/modules/news/controllers/news_controller.dart';
import 'package:flutter_demo_mac/modules/news/models/news_model.dart';
import 'package:get/get.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Mark: - 手动创建实例化，后续可以通过Get.find获取
    final controller = Get.put(NewsController());
    //Mark: - 手动获取实例化，通过Get.find()找到对应的GetxController
    // final controller = Get.find<NewsController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: GetBuilder<NewsController>(
        builder: (counter) {
          if (counter.isLoading == true) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: counter.dataSource.length,
              itemBuilder: (_, index) {
                NewsModel newsModel = counter.dataSource[index];
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        newsModel.itemCover,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          newsModel.title,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
