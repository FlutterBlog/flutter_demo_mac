/*
 * flutter_demo_mac 
 * mine_page.dart 
 * 
 * Created by YueChen on 2021/12/28.
 */

import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mine"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Mine Page',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
