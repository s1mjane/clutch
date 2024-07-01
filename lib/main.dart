import 'package:flutter/material.dart';
// import 'package:cluth_vscode_ver1/widget/tab_screen.dart';
import 'package:table_calendar/table_calendar.dart';

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
        length: 3, // 탭의 수
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Clutch DEMO'),
            bottom: const TabBar(
              tabs: [
                Tab(text: '요약'),
                Tab(text: 'Pitch'),
                Tab(text: '주요통계'),
              ],
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Segmented Button'),
                const Row(children: [
                  TimeChoice(),
                  Spacer(),
                  ContentChoice(),
                ],),
                const Divider(),
                Container(
                    child: TableCalendar(
                        locale: "en_US",
                        rowHeight: 43,
                        headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
                        availableGestures: AvailableGestures.all,
                        focusedDay: DateTime.now(),
                        firstDay: DateTime.utc(2010, 3, 14),
                        lastDay: DateTime.utc(2030, 10, 16)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum Times { past, present }

class TimeChoice extends StatefulWidget {
  const TimeChoice({super.key});

  @override
  State<TimeChoice> createState() => _TimeChoiceState();
}

class _TimeChoiceState extends State<TimeChoice> {
  Set<Times> selection = <Times>{Times.present};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Times>(
      segments: const <ButtonSegment<Times>>[
        ButtonSegment<Times>(value: Times.past, label: Text('과거')),
        ButtonSegment<Times>(value: Times.present, label: Text('현재')),
      ],
      selected: selection,
      onSelectionChanged: (Set<Times> newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: false,
    );
  }
}

enum Contents { shoot, formation, pass }

class ContentChoice extends StatefulWidget {
  const ContentChoice({super.key});

  @override
  State<ContentChoice> createState() => _ContentChoiceState();
}

class _ContentChoiceState extends State<ContentChoice> {
  Set<Contents> selection = <Contents>{Contents.shoot};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Contents>(
      segments: const <ButtonSegment<Contents>>[
        ButtonSegment<Contents>(value: Contents.shoot, label: Text('슛맵')),
        ButtonSegment<Contents>(value: Contents.formation, label: Text('포메이션 맵')),
        ButtonSegment<Contents>(value: Contents.pass, label: Text('패스 맵')),
      ],
      selected: selection,
      onSelectionChanged: (Set<Contents> newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: false,
    );
  }
}

