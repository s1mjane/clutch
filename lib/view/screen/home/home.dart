import 'package:cluth_vscode_ver1/view/screen/home/wigdet/FontComponent.dart';
import 'package:cluth_vscode_ver1/view/screen/home/wigdet/ThemeComponent.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'Theme'),
              Tab(text: 'Font'),
            ],
          ),
          title: Text('Font & Color Theme Ex'),
        ),
        body: TabBarView(
          children: <Widget>[
            ThemeComponent(),
            FontComponent()
          ],
        ),
      ),
    );
  }
}