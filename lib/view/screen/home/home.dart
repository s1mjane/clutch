import 'package:cluth_vscode_ver1/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(), // 손가락 모션으로 탭 못 바꾸게.
          children: <Widget>[
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: const Bottom(),
      ),
    );
  }
}
