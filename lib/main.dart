import 'package:chat_bubble/bubble.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("聊天气泡"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            Bubble(
              color: Colors.purple,
              child: Text(
                "你6666",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Bubble(
                  constraints: BoxConstraints(
                    maxWidth: 350.0,
                  ),
                  direction: BubbleDirection.right,
                  color: Colors.orangeAccent,
                  child: Text(
                    "这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息这是一个右边的信息",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Bubble(
              color: Colors.green,
              child: Text("默认是左边的"),
            ),
            SizedBox(
              height: 5.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Bubble(
                  direction: BubbleDirection.right,
                  color: Colors.yellow,
                  child: Text(
                    "这是一个右边的信息",
                  ),
                ),
              ],
            ),
            Bubble(
              color: Colors.red,
              child: Text("默认是左边的66666"),
            ),
            SizedBox(
              height: 5.0,
            ),
            Bubble(
              color: Colors.white,
              child: Text("默认是左边的888899999"),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Bubble(
                  direction: BubbleDirection.right,
                  color: Colors.blueAccent,
                  child: Text(
                    "这是一个右边的信息",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
             SizedBox(
              height: 5.0,
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Bubble(
                  direction: BubbleDirection.right,
                  color: Colors.blueAccent,
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
