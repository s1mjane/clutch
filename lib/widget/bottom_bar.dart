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
                  Image.asset('asset/icon/home.png', height: 28.h),
                  Text('홈', style: TextStyle(fontSize: 12.sp)),
                ]),
              ),Tab(
                child: Column(children: [
                  SizedBox(height: 7.h),
                  Image.asset('asset/icon/link.png', height: 17.h),
                  SizedBox(height: 3.h),
                  Text('연결', style: TextStyle(fontSize: 12.sp)),
                ]),
              ),Tab(
                child: Column(children: [
                  Image.asset('asset/icon/players.png', height: 26.h),
                  SizedBox(height:2.h),
                  Text('선수', style: TextStyle(fontSize: 12.sp)),
                ]),
              ),Tab(
                child: Column(children: [
                  Image.asset('asset/icon/calendar.png', height: 25.h),
                  SizedBox(height: 4.h),
                  Text('캘린더', style: TextStyle(fontSize: 12.sp)),
                ]),
              ),
            ],
          )),
    );
  }
}
