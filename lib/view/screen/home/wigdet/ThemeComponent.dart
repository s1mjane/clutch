import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/colortheme.dart';

class ThemeComponent extends StatefulWidget {
  const ThemeComponent({Key? key}) : super(key: key);

  @override
  State<ThemeComponent> createState() => _ThemeComponentState();
}

class _ThemeComponentState extends State<ThemeComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: colorTheme.primary,
              height: 400.h,
              width: 200.w,
            ),

            Container(
              color: colorTheme.secondary,
              height: 400.h,
              width: 200.w,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: colorTheme.neutral,
              height: 400.h,
              width: 200.w,
            ),

            Container(
              color: colorTheme.tertiary,
              height: 400.h,
              width: 200.w,
            )
          ],
        )

      ],
    );
  }
}
