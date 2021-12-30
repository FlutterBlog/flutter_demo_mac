/*
 * flutter_demo_mac 
 * news_model.dart 
 * 
 * Created by YueChen on 2021/12/28.
 */

class NewsModel {
  late String title;
  late String author;
  late String hotWords;
  late String shareUrl;
  late String itemCover;

  late int hotValue;
  late int playCount;
  late int diggCount;
  late int commentCount;

  NewsModel.fromJson(Map<String, dynamic> json) {
    this.title = json["title"] ?? "";
    this.author = json["author"] ?? "";
    this.hotWords = json["hot_words"] ?? "";
    this.shareUrl = json["share_url"] ?? "";
    this.itemCover = json["item_cover"] ?? "";

    this.hotValue = json["hot_value"] ?? 0;
    this.playCount = json["play_count"] ?? 0;
    this.diggCount = json["digg_count"] ?? 0;
    this.commentCount = json["comment_count"] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['author'] = this.author;
    data['hotWords'] = this.hotWords;
    data['shareUrl'] = this.shareUrl;
    data['itemCover'] = this.itemCover;

    data['hotValue'] = this.hotValue;
    data['playCount'] = this.playCount;
    data['diggCount'] = this.diggCount;
    data['commentCount'] = this.commentCount;

    return data;
  }
}
