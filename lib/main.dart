import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _weight = 0;
  double _result = 0;

  TextEditingController weightController = new TextEditingController();

  void _calculate() {
    setState(() {
      _result = double.parse(weightController.text)*2.2*30/2;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You should drink water a day.',
            ),
            Text(
              '$_result',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'ml.',
            ),
            TextField(
                controller: weightController,
                decoration: InputDecoration(
                  hintText: 'Your Weight ? (kg.)',
                )),
            FlatButton(onPressed: _calculate, child: Text("Cal"), color: Colors.grey  ,),
          ],
        ),
      ),
    );
  }
}
