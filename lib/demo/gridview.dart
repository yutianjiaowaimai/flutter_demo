import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

class GridViewDemo extends StatelessWidget {
  Widget _gridviewItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(list[index].imageUrl,fit: BoxFit.cover,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: list.length,
      itemBuilder: _gridviewItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
    );
  }
}
