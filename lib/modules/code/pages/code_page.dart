/*
 * flutter_demo_mac 
 * code_page.dart 
 * 
 * Created by YueChen on 2021/12/28.
 */

import 'package:flutter/material.dart';

class CodePage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Code"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Code Page',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
