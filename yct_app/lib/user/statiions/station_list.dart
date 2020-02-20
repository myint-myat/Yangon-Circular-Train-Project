import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yct_app/service/searchService.dart';

class Station extends StatefulWidget {
  @override
  _StationState createState() => _StationState();
}

class _StationState extends State<Station> {

  final CollectionReference _stationCollection =
  Firestore.instance.collection("station");

  var queryResultSet = [];
  var tempSearchStore = [];

  initiateSearch(value) {
    if (value.length == 0) {
      setState(() {
        queryResultSet = [];
        tempSearchStore = [];
      });
    }

    var capitalizedValue =
        value.substring(0, 1).toUpperCase() + value.substring(1);

    if (queryResultSet.length == 0 && value.length == 1) {
      SearchService().searchByName(value).then((QuerySnapshot docs) {
        for (int i = 0; i > docs.documents.length; i++) {
          queryResultSet.add(docs.documents[i].data);
        }
      });
    } else {
      tempSearchStore = [];
      queryResultSet.forEach((element) {
        if (element['stationName'].startsWith(capitalizedValue)) {
          setState(() {
            tempSearchStore.add(element);
          });
        }
      }
      );
    }
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 145),
                  child: StreamBuilder(
                    stream: _stationCollection.snapshots(),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return Center(child: CircularProgressIndicator());
                          break;
                        default:
                          return ListView.builder(
                            itemCount: snapshot.data.documents.length,
                            itemBuilder: (context, index) {
                              return _stationBuildList(
                                  snapshot.data.documents[index]);
                              //return ...(snapshot,index);
                            },
                          );
                      }
                    },
                  ),
                ),
//                Container(
//                  padding: EdgeInsets.only(top: 145),
//                  child: GridView.count(crossAxisCount: 2,
//                  padding: EdgeInsets.only(left: 10,right: 10),
//                  primary: false,
//                  shrinkWrap: true,
//                  children: tempSearchStore.map((element){
//                    return _stationBuildList(element);
//                  }).toList(),)
//                ),
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Text(
                          'Station',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
//                          Navigator.pushReplacementNamed(context, '/stationTest',arguments: {
//                            'stationName' : dataStation['stationName']
//                          });
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 110,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: TextField(
                            onChanged: (val) {
                              initiateSearch(val);
                            },
                            cursorColor: Theme
                                .of(context)
                                .primaryColor,
                            decoration: InputDecoration(
                                hintText: "Search Station",
                                hintStyle: TextStyle(
                                    color: Colors.black38, fontSize: 16),
                                prefixIcon: Material(
                                  elevation: 0,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                                  child: Icon(Icons.search),
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 13)),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget _stationBuildList(dataStation) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          //border: Border.all(color: Colors.white70) ,
          color: Colors.white,
        ),
        width: double.infinity,
        height: 110,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        //padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, '/stationDetails');
            Navigator.pushReplacementNamed(
                context, '/stationDetails', arguments: {
              //'stationName' : dataStation['stationName'],
              'stationNameM': dataStation['stationNameM'],
              //'stationId' : dataStation['stationId'].toString(),
            }
            );
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
                    dataStation['stationId'].toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            dataStation['stationName'],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            dataStation['stationNameM'],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
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
      );
    }
  }
