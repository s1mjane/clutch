import 'package:flutter/material.dart';
import 'package:cluth_vscode_ver1/widget/tab_screen.dart'; // TabScreen 경로 확인

void main() {
  runApp(const MyApp());
}

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
      home: const CombinedApp(),
    );
  }
}

class CombinedApp extends StatelessWidget {
  const CombinedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CLUTCH_0701',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        highlightColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 5, // 탭의 수
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Clutch'),
              bottom: const TabBar(
                tabs: [
                  Tab(text: '슛맵'),
                  Tab(text: '포메이션 맵'),
                  Tab(text: '패스 맵'),
                  Tab(text: '최근'),
                  Tab(text: '과거')
                ],
              ),
            ),
            body: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Text('Multiple choice'),
                  MultipleChoice(),
                  Spacer()
                ],
              ),
            )),
      ),
    );
  }
}

enum Sizes { extraSmall, small, medium, large, extraLarge }

class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Set<Sizes> selection = <Sizes>{Sizes.large, Sizes.extraLarge};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sizes>(
      segments: const <ButtonSegment<Sizes>>[
        ButtonSegment<Sizes>(value: Sizes.extraSmall, label: Text('XS')),
        ButtonSegment<Sizes>(value: Sizes.small, label: Text('S')),
        ButtonSegment<Sizes>(value: Sizes.medium, label: Text('M')),
        ButtonSegment<Sizes>(
          value: Sizes.large,
          label: Text('L'),
        ),
        ButtonSegment<Sizes>(value: Sizes.extraLarge, label: Text('XL')),
      ],
      selected: selection,
      onSelectionChanged: (Set<Sizes> newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: true,
    );
  }
}