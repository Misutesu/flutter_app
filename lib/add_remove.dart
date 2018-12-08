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
  var isShowBtn = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sample App'),
      ),
      body: new Center(
        child: isShowBtn
            ? new Text('Text')
            : new MaterialButton(onPressed: _check),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        tooltip: 'Add Num',
        child: new Icon(Icons.update),
      ),
    );
  }

  void _check() {
    isShowBtn = !isShowBtn;
  }
}
