import 'package:flutter/material.dart';

void main() => runApp(new SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MyApp',
      theme: new ThemeData(primaryColor: Colors.white),
      home: new SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  var time = 1;

  void _updateText() {
    setState(() {
      ++time;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textToShow = 'Flutter Num : $time';
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sample App'),
      ),
      body: new Center(
        child: new Text(textToShow),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Add Num',
        child: new Icon(Icons.update),
      ),
    );
  }
}
