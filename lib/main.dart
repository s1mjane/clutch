// import 'package:cluth_vscode_ver1/widget/tab_screen.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'CLUTCH_0701',
//       theme: ThemeData(
//         brightness: Brightness.dark,
//         primaryColor: Colors.black,
//         highlightColor: Colors.white,
//       ),
//       home: TabScreen(),  // TabScreen을 홈으로 설정
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:cluth_vscode_ver1/widget/tab_screen.dart';  // 경로 확인

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CLUTCH_0701',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        highlightColor: Colors.white,
      ),
      home: TabScreen(),  // TabScreen을 홈으로 설정
    );
  }
}
