import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('自己紹介'),
          ],
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("image/icon.png")
                  )
              ),
            ),
            Text(
              'ニックネーム:そーだ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '年齢:16歳',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Link(
              // 開きたいWebページのURLを指定
              uri: Uri.parse('twitter://user?screen_name=soda_saida'),
              // targetについては後述
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return TextButton.icon(
                  style: TextButton.styleFrom(
                    side: BorderSide(
                      color: Colors.blue, //枠線の色
                    ),
                  ),
                  onPressed: openLink,
                  label: const Text('twitter'),
                  icon: const Icon(FontAwesomeIcons.twitter),
                );
              },
            ),
            Text('↑'),
            Text('ほとんど動かないよ!'),
            Link(
              // 開きたいWebページのURLを指定
              uri: Uri.parse('https://github.com/s1223takuma'),
              // targetについては後述
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return TextButton.icon(
                  style: TextButton.styleFrom(
                    side: BorderSide(
                      color: Colors.black, //枠線の色
                    ),
                  ),
                  onPressed: openLink,
                  label: const Text('github',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  icon: const Icon(FontAwesomeIcons.github,color:Colors.black),
                );
              },
            ),
            Text('↑'),
            Text('ほとんど動かないよ!'),
            Link(
              // 開きたいWebページのURLを指定
              uri: Uri.parse('https://line.me/ti/p/o9_zEJCSx5'),
              // targetについては後述
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return TextButton.icon(
                  style: TextButton.styleFrom(
                    side: BorderSide(
                      color: Colors.green, //枠線の色
                    ),
                  ),
                  onPressed: openLink,
                  label: const Text('line',
                    style: TextStyle(
                      color: Colors.green,
                    ),),
                  icon: const Icon(FontAwesomeIcons.line,color:Colors.green),
                );
              },
            ),
            Text('↑'),
            Text('気分次第でそこそこ動くよ!'),
            Link(
              // 開きたいWebページのURLを指定
              uri: Uri.parse('https://discord.gg/ETzRddM9Hk'),
              // targetについては後述
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return TextButton.icon(
                  style: TextButton.styleFrom(
                    side: BorderSide(
                      color: Colors.purple, //枠線の色
                    ),
                  ),
                  onPressed: openLink,
                  label: const Text('discord',
                    style: TextStyle(
                      color: Colors.purple,
                    ),),
                  icon: const Icon(FontAwesomeIcons.discord,color:Colors.purple),
                );
              },
            ),
            Text('↑'),
            Text('基本的にはここに引きこもってるよ！ id:そーだ#1438'),
          ],
        ),
      ),
    );
  }
}
