import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero in flutter"),
      ),
      body: Hero(
        tag: 'flutterLogo',
        child: GestureDetector(
          onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context) =>HeroExamplePage())),
          child: FlutterLogo(
            size: 100.0,
          ),
        ),
      ),
    );
  }
}

class HeroExamplePage extends StatelessWidget {
  const HeroExamplePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('selected image'),
      ),
      body: Center(
        child:Hero(
          tag: 'flutterLogo',
          child: FlutterLogo(
            size: 200.0,
          ),
        ) ,
      ),
    );
  }
}

