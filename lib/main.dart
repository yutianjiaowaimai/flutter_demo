import 'package:flutter/material.dart';
import 'package:flutter_app/demo/gridview.dart';
import 'package:flutter_app/demo/pageview.dart';
import 'package:flutter_app/demo/draw.dart';
import 'package:flutter_app/demo/list.dart';
import 'package:flutter_app/demo/navigation.dart';
import 'package:flutter_app/model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '界面测试',
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
      home: Home(),
      routes: routers,
    );
  }
}

class Home extends StatelessWidget {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "navigation",
              onPressed: () => debugPrint("asd"),
            )
          ],
          title: Text('YHC'),
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.local_airport)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.audiotrack)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            PageviewDemo(),
            GridViewDemo(),
            GridViewDemo(),
          ],
        ),
        drawer: Draw(),
        bottomNavigationBar: BottomNavigationDemo(),
      ),
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(list[index].imageUrl),
          SizedBox(
            height: 16,
          ),
          Text(
            list[index].title,
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }
}

Map<String, WidgetBuilder> routers = {};

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "我是首页",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.yellow),
      ),
    );
  }
}

class NewRoute extends StatelessWidget {
  NewRoute({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("This is new page"),
      ),
    );
  }
}

class _MyHomePageState extends StatelessWidget {
  int _counter = 0;

  void _incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("jump to a new page"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewRoute(title: "我是标题");
                }));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
