import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

class ListViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Widget _itemBuilderLayout(BuildContext context,int index){
      return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(list[index].imageUrl),
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16,),
            Text(
              list[index].title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 16,),
          ] ,
        ),
      );
    }

    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: _itemBuilderLayout,
      ),
    );
  }


}