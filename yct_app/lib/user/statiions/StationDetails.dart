import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class StationDetails extends StatefulWidget {
  @override
  _StationDetailsState createState() => _StationDetailsState();
}

class _StationDetailsState extends State<StationDetails> {
  //final CollectionReference _stationCollection = Firestore.instance.collection("station");

  final List<Map> toYangon = [
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station(လှော်ကားဘူတာ)"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
  ];
  
  final List<Map> toInsein=[
    {
      "trainId": "က - 2",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station(လှော်ကားဘူတာ)"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
    {
      "trainId": "က - ၁",
      "deptTime": "12:30 pm",
      "latestStation": "Hlawkar Station"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
            title: Text(
              'Station Details',
              style: TextStyle(color: Colors.white),
            ),
            elevation: 0,
            bottom: TabBar(
                unselectedLabelColor: Colors.yellowAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.orangeAccent]),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("To Yangon"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("To Insein"),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Container(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: toYangon.length,
                      itemBuilder: (BuildContext context, int index) {
                        return buildList(context, index);
                      }),
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: toInsein.length,
                      itemBuilder: (BuildContext context,int index)=> toInseinList(context, index)
                  ),
                ),
              ),
            )
          ]),
        ));
  }

  Widget buildList(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blueAccent) ,
          color: Colors.white,
        ),
        width: double.infinity,
        height: 100,
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              //margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
                color: Colors.deepPurpleAccent,
                //border: Border.all(width: 3,color:Colors.black38),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    toInsein[index]['trainId'],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    toInsein[index]['deptTime'],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
           Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("ခရီးဆုံးဘူတာ",
                     style: TextStyle(
                       fontSize: 20.0,
                       fontWeight: FontWeight.bold
                     ),
                 ),
                 Text(toInsein[index]['latestStation'],
                 style: TextStyle(
                   fontWeight: FontWeight.w500,
                   fontSize: 18.0
                 ),),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }

  Widget toInseinList(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blueAccent) ,
          color: Colors.white,
        ),
        width: double.infinity,
        height: 100,
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              //margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
                color: Colors.deepPurpleAccent,
                //border: Border.all(width: 3,color:Colors.black38),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    toYangon[index]['trainId'],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    toYangon[index]['deptTime'],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("ခရီးဆုံးဘူတာ",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(toYangon[index]['latestStation'],
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0
                    ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
