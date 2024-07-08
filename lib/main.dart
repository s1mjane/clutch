import 'package:cluth_vscode_ver1/view/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430,932),
      builder: (_,child){
        return GetMaterialApp(
            title: 'Clutch',
            theme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.black,
              focusColor: Colors.white,
            ),
            home: HomePage()
        );
      },
    );
  }
}

