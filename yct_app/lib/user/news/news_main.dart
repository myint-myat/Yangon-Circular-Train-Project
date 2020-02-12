import 'package:flutter/material.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Screen"),
        centerTitle: true,
      ),
      body:Container(
        child:Column(
          //mainAxisAlignment: MainAxisAlignment.center,

         children: <Widget>[
           RaisedButton.icon(onPressed: (){
Navigator.pushNamed(context, 'news_details');
           },
               icon: Icon(Icons.edit_location), label: Text('News Details'))
         ],
        ),
      )
    );
  }
}
