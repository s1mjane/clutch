import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../view/icon/home_icon.dart';

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
                child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                  Icon(
                    MyFlutterApp.home,
                    size: 26.h, // 원래는 29.h
                  ),
                  Text('홈', style: TextStyle(fontSize: 14.sp)),
                ]),
              ),
              Tab(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 7.h),
                      Icon(
                        MyFlutterApp.link,
                        size: 17.h,
                      ),
                      SizedBox(height: 2.h),
                      Text('연결', style: TextStyle(fontSize: 14.sp)),
                    ]),
              ),
              Tab(
                child: Column(children: [
                  Icon(
                    MyFlutterApp.player,
                    size: 33.w,
                  ),
                  SizedBox(height: 2.h),
                  Text('선수', style: TextStyle(fontSize:
                   14.sp)),
                ]),
              ),
              Tab(
                child: Column(children: [
                  Icon(
                    MyFlutterApp.calendar,
                    size: 33.w,
                  ),
                  SizedBox(height: 4.h),
                  Text('캘린더', style: TextStyle(fontSize: 14.sp)),
                ]),
              ),
            ],
          )),
    );
  }
}
