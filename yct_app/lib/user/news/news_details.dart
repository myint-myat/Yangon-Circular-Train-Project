import 'package:flutter/material.dart';

class NewsDetails extends StatefulWidget {
  @override
  _NewsDetailsState createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("News Details"),
        centerTitle: true,
        elevation: 5.0
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top:10,left: 10,right: 10),
              height: 250,
              width: double.infinity,
              color: Colors.cyan,
              child: Image.asset('assets/temp/tempnews.jpg',width: double.infinity,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 280,left: 10,right: 10),
              height: double.infinity,
              width: double.infinity,
              //color: Colors.cyan,
              padding: EdgeInsets.only(top: 10,left: 10,right: 1),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan,width: 1.0,style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(data['newsTitle'],
                      style: TextStyle(
                        //color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      data['description'],
                      textDirection: TextDirection.ltr,
                      style:  TextStyle(fontSize: 18, color: Colors.black),
                      maxLines: 100,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
