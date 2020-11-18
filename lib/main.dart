import 'dart:async';

import 'package:flutter/material.dart';

import 'list_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  final items = [
    ListItem(
        title: "すごいよ!!マサルさん",
        thumbnailUrl: "https://dummyimage.com/200",
        text: "お前のパンチを食らって倒れなかったのは…オレがはじめてだぜ…!!",
        author: "うすた京介"),
    ListItem(
        title: "ポラーノの広場",
        thumbnailUrl: "https://dummyimage.com/400",
        text:
            "あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。",
        author: "宮沢賢治"),
    ListItem(
        title: "キノの旅",
        thumbnailUrl: "https://dummyimage.com/200",
        text: "世界は美しくなんかない。そしてそれ故に、美しい",
        author: "時雨沢恵一")
  ];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Container(
            color: Colors.blueGrey,
            padding: EdgeInsets.all(10),
            child: ListView.builder(
                itemCount: widget.items.length,
                itemBuilder: (ctx, idx) {
                  return ListCell(item: widget.items[idx]);
                })));
  }
}

class ListCell extends StatelessWidget {
  final ListItem item;
  ListCell({@required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Container(
                height: 130,
                child: Row(children: [
                  Expanded(
                      flex: 2,
                      child: Column(children: [
                        Expanded(
                            flex: 1,
                            child: Center(
                                child: Text(item.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 9)))),
                        Expanded(
                            flex: 3, child: Image.network(item.thumbnailUrl))
                      ])),
                  Expanded(
                      flex: 5,
                      child: Padding(
                          padding: EdgeInsets.all(8), child: Text(item.body)))
                ]))));
  }
}
