import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
          height: 91.h,
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                child: Column(children: [
                  Image.asset('asset/icon/home.png', height: 29.h),
                  Text('홈', style: TextStyle(fontSize: 13.sp)),
                ]),
              ),
            ],
          )),
    );
  }
}
