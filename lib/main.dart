// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'OurButton.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'An app that can count to'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late String _displayedString;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_counter == 0) {
      _displayedString = "None";
    } else {
      _displayedString = _counter.toString();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title} $_counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _displayedString,
              style: Theme.of(context).textTheme.button,
            ),
            FlatButton(
              onPressed: _resetCounter,
              color: Colors.red,
              child: Text(
                "Reset counter",
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: OurButton(
        text: 'Make the counter ${_counter + 1}',
        textColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        splashColor: Theme.of(context).primaryColorLight,
        onPressed: _incrementCounter,
      ),
    );
  }
}
