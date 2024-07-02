import 'package:flutter/material.dart';  // CupertinoApp을 사용하지 않는다면 이렇게 변경
import '../../../theme/fonttheme.dart';
import 'package:flutter/material.dart';

// dart:ui import 제거

class FontComponent extends StatefulWidget {
  const FontComponent({Key? key}) : super(key: key);

  @override
  State<FontComponent> createState() => _FontComponentState();
}

class _FontComponentState extends State<FontComponent> {
  // TextStyle 리스트 생성
  final List<TextStyle> textStyles = [
    fontTheme.onboard_large,
    fontTheme.onboard_medium,
    fontTheme.onboard_small,
    fontTheme.headline_large,
    fontTheme.headline_medium,
    fontTheme.headline_small,
    fontTheme.body_number,
    fontTheme.body_title_1,
    fontTheme.body_title_2,
    fontTheme.body_large_1,
    fontTheme.body_large_2,
    fontTheme.body_medium,
    fontTheme.small,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(textStyles.length, (index) {
        return Text(
          'Text Style ${index + 1}',
          style: textStyles[index],
        );
      }),
    );
  }
}