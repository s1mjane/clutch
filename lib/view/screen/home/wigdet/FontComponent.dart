import 'package:flutter/material.dart';  // CupertinoApp을 사용하지 않는다면 이렇게 변경
import '../../../theme/fonttheme.dart';
import 'package:flutter/material.dart';


class FontComponent extends StatefulWidget {
  const FontComponent({Key? key}) : super(key: key);

  @override
  State<FontComponent> createState() => _FontComponentState();
}

class _FontComponentState extends State<FontComponent> {
  // TextStyle 리스트 생성
  final List<TextStyle> textStyles = [
    FontTheme.onboardLarge,
    FontTheme.onboardMedium,
    FontTheme.onboardSmall,
    FontTheme.headlineLarge,
    FontTheme.headlineMedium,
    FontTheme.headlineSmall,
    FontTheme.bodyNumber,
    FontTheme.bodyTitle1,
    FontTheme.bodyTitle2,
    FontTheme.bodyLarge1,
    FontTheme.bodyLarge2,
    FontTheme.bodyMedium,
    FontTheme.small,
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