import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThamaingBusStop extends StatefulWidget {
  @override
  _ThamaingBusStopState createState() => _ThamaingBusStopState();
}

class _ThamaingBusStopState extends State<ThamaingBusStop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SingleChildScrollView(
        child: Container(
          //height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'သမိုင်းဘူတာမှတ်တိုင်',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 130,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          child: Text(
                            'YBS ကားလိုင်းများ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  //border: Border.all(color: Colors.white70) ,
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.symmetric(vertical: 180, horizontal: 15),
                //padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    //Navigator.pushNamed(context, '/train_detail');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 110,
                        //margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          color: Colors.deepPurpleAccent,
                          //border: Border.all(width: 3,color:Colors.black38),
                        ),
                        child: Center(
                          child: Text(
                            '11',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "အောင်မညလာအ‌ေ၀◌းပြေး - ရွှေတိ၈ုံဘုရား",
                                style: TextStyle(
                                    fontSize:15, fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.navigate_next,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  //border: Border.all(color: Colors.white70) ,
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.symmetric(vertical: 290, horizontal: 15),
                //padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    //Navigator.pushNamed(context, '/train_detail');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 110,
                        //margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          color: Colors.deepPurpleAccent,
                          //border: Border.all(width: 3,color:Colors.black38),
                        ),
                        child: Center(
                          child: Text(
                            '22',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "(ထန်းတပင်) - သခင်မြပန်းခြံ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.navigate_next,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  //border: Border.all(color: Colors.white70) ,
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.symmetric(vertical: 400, horizontal: 15),
                //padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    //Navigator.pushNamed(context, '/train_detail');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 110,
                        //margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          color: Colors.deepPurpleAccent,
                          //border: Border.all(width: 3,color:Colors.black38),
                        ),
                        child: Center(
                          child: Text(
                            '94',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "ကွန်ပျူတာ - ဘူတာကြီး",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.navigate_next,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
