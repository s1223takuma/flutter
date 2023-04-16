import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '自己紹介'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.twitter,
            ),
            Text('自己紹介'),
            Icon(
              FontAwesomeIcons.twitter,
            ),
          ],
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '名前:関琢磨',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '年齢:16才',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '趣味:無し',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            FaIcon(
              FontAwesomeIcons.twitter,
              size: 50,
              color: Color(0xFF1DA1F2),
            ),
          ],
        ),
      ),
    );
  }
}
