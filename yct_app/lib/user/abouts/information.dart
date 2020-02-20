
import 'package:flutter/material.dart';

class Abouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abouts"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                    color: Colors.white,
                    height: 30,
                    width: double.infinity,
                    child: Center(
                      child: Text("Abouts",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    width: double.infinity,
                    height: 30,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('App version',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Text('1.0',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),)
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 30,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('Database version',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                        Text('-',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),)
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.orange,
                    width: double.infinity,
                    height: 30,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('Latest version',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                        Text('20/2/2020',style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.orange,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan,width: 1.0,style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),

                    margin: EdgeInsets.only(left: 10,right: 10,top: 300),
                    child: new Text(
                      "Yangon Circular Train Application သည် ရန်ကုန်မြို့တွင်း မြို့ပတ်ရထားဖြင့် သွားလာမှုလွယ်ကူစေရန် ရေးသားထားခြင်းဖြစ်ပါသည်/ ရထား၀◌င်ချိန် ထွက်ချိန်သည် စံသတ်မှတ်ချိန်ထက် အနည်းငယ် နောက်ကျနိုင်ပါသည်",
                      textDirection: TextDirection.ltr,
                      style: new TextStyle(fontSize: 20.0, color: Colors.black,fontWeight: FontWeight.w500),
                      maxLines: 5,
                    ),
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
