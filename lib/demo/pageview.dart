import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

class PageviewDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    Widget _pageItemBuilder(BuildContext context,int index){
      return Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.network(list[index].imageUrl,fit: BoxFit.cover,),
          ),
          Positioned(
            bottom:8.0,
            left: 8.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  list[index].title,
                  style: TextStyle(fontSize: 22,color: Colors.black),
                )
              ],
            ))
        ],
      );
    }


    return PageView.builder(
      itemCount: list.length,
      itemBuilder: _pageItemBuilder,
    );
  }

}

class PageViewDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return PageView(
        children: <Widget>[
          Container(
            alignment: Alignment(0.0, 0.0),
            color: Colors.brown[100],
            child: Text(
              "第1页",
              style: TextStyle(color: Colors.white,fontSize: 22),
            ),
          ),
          Container(
            alignment: Alignment(0.0, 0.0),
            color: Colors.blue[100],
            child: Text(
              "第2页",
              style: TextStyle(color: Colors.white,fontSize: 22),
            ),
          ),
          Container(
            alignment: Alignment(0.0, 0.0),
            color: Colors.deepOrangeAccent[100],
            child: Text(
              "第3页",
              style: TextStyle(color: Colors.white,fontSize: 22),
            ),
          ),
        ]
    );
  }

}