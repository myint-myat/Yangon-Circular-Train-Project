import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StationDetails extends StatefulWidget {
  @override
  _StationDetailsState createState() => _StationDetailsState();
}

class _StationDetailsState extends State<StationDetails> {

  Map dataStation={};
  final CollectionReference _toMingalarCollection = Firestore.instance.collection("station").document('4qZCdP4VL6nF9krlDo9O').collection('toMingalardon');
  final CollectionReference _toDanCollection = Firestore.instance.collection("station").document('4qZCdP4VL6nF9krlDo9O').collection('toDanyingon');

  @override
  Widget build(BuildContext context) {
    dataStation = ModalRoute.of(context).settings.arguments;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
            title: Text(
              dataStation['stationNameM'],
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
                      child: Text("To Left"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("To Right"),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Container(
              child: Scrollbar(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: StreamBuilder(
                    stream: _toMingalarCollection.snapshots(),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return Center(child: CircularProgressIndicator());
                          break;
                        default:
                          return ListView.builder(
                            itemCount: snapshot.data.documents.length,
                            itemBuilder: (context, index) {
                              return buildList(
                                  snapshot.data.documents[index]);
                              //return ...(snapshot,index);
                            },
                          );
                      }
                    },
                  ),
                ),
              ),
            ),
            Container(
              child: Scrollbar(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: StreamBuilder(
                    stream: _toDanCollection.snapshots(),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return Center(child: CircularProgressIndicator());
                          break;
                        default:
                          return ListView.builder(
                            itemCount: snapshot.data.documents.length,
                            itemBuilder: (context, index) {
                              return toInseinList(
                                  snapshot.data.documents[index]);
                              //return ...(snapshot,index);
                            },
                          );
                      }
                    },
                  ),
                ),
              ),
            )
          ]),
        ));
  }

  Widget buildList(DocumentSnapshot data) {
    return Container(
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
                 data['trainId'],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  data['deptTime'],
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
               Text(data['finalStation'],
               style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontSize: 18.0
               ),),
             ],
           ),
         )
        ],
      ),
    );
  }

  Widget toInseinList(DocumentSnapshot data) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 5, left: 10, right: 10,bottom: 5),
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
                    data['trainId'],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    data['deptTime'],
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
                  Text(data['finalStation'],
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
