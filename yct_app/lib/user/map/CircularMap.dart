import 'package:flutter/material.dart';

class CircularMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular Map"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
              child: Image.asset('assets/images/user/map/circularMap.jpg'),
            ),
             new Container(
              //color: Colors.red,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("ဘူတာပေါင်း = ၄၂ ဘူတာ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                  ),
                  Text('သံလမ်းမိုင်ပေါင်း = ၄၅.၉ ကီလိုမီတာ(၂၈.၅မိုင်',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
