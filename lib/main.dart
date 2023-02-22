// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:first_course_first_assignment/text_control.dart';
import 'package:flutter/material.dart';

import './text_output.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _textIndex = 0;
  final List<String> _texts = [
    'Lorem ipsum dolor sit amet',
    'Sed placerat mauris at augue pulvinar pretium',
    'Curabitur commodo auctor eleifend',
    'Suspendisse convallis viverra urna, quis faucibus velit varius a',
    'Vestibulum luctus accumsan dictum',
    'Morbi tincidunt eros et leo vulputate, sed iaculis nisi elementum',
    'Phasellus ligula lorem, auctor a odio sit amet, luctus vulputate erat',
    'Vestibulum ac consectetur ante, fermentum mattis augue',
    'Curabitur pharetra vulputate libero at hendrerit',
    'Etiam maximus ante quis ante dignissim, nec varius nunc semper',
  ];

  void _reset() {
    setState(() {
      _textIndex = 0;
    });
  }

  void _refreshText() {
    setState(() {
      _textIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Assignment'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextOutput(
                  textIndex: _textIndex,
                  textLength: _texts.length,
                  texts: _texts,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextControl(
                  textIndex: _textIndex,
                  textLength: _texts.length,
                  refreshTextHandler: _refreshText,
                  resetHandler: _reset,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
