/*
 * flutter_demo_mac 
 * main_page.dart 
 * 
 * Created by YueChen on 2021/12/27.
 */

import 'package:flutter/material.dart';
import 'package:flutter_demo_mac/common/utils/splash_hide_factory.dart';
import 'package:flutter_demo_mac/modules/code/pages/code_page.dart';
import 'package:flutter_demo_mac/modules/mine/pages/mine_page.dart';
import 'package:flutter_demo_mac/modules/news/pages/news_page.dart';

class MainTabbarPage extends StatefulWidget {
  const MainTabbarPage({Key? key}) : super(key: key);

  @override
  _MainTabbarPageState createState() => _MainTabbarPageState();
}

class _MainTabbarPageState extends State<MainTabbarPage> {
  // MARK:
  int selectedIndex = 0;

  static List<Widget> pageList = <Widget>[
    NewsPage(),
    CodePage(),
    MinePage(),
  ];

  static List<BottomNavigationBarItem> itemList = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.access_alarms, color: Colors.black, size: 20),
      activeIcon: Icon(Icons.access_alarms, color: Colors.blue, size: 20),
      label: "新闻",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bookmark, color: Colors.black, size: 20),
      activeIcon: Icon(Icons.bookmark, color: Colors.blue, size: 20),
      label: "仓库",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.book, color: Colors.black, size: 20),
      activeIcon: Icon(Icons.book, color: Colors.blue, size: 20),
      label: "个人",
    ),
  ];

  // MARK: Override
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          brightness: Brightness.light,
          splashFactory: SplashHideFactory(), // 移除波纹效果
          highlightColor: Colors.transparent, // 移除点击效果
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          fixedColor: Colors.blue,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: itemList,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
      body: pageList[selectedIndex],
      backgroundColor: Colors.white,
    );
  }
}
