import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationDemoState();
  }

}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {

  var _currentIndex = 0;
  void onBottomBarClick(int index){
      setState(() {
        _currentIndex = index;
      });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: onBottomBarClick,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("首页"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          title: Text("朋友圈"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          title: Text("新闻"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("我的"),
        ),
      ],
    );
  }
}