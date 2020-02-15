import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StationDetails extends StatefulWidget {
  @override
  _StationDetailsState createState() => _StationDetailsState();
}

class _StationDetailsState extends State<StationDetails> {

  final CollectionReference _stationCollection = Firestore.instance.collection("station");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Station Details"),
      ),
      body: StreamBuilder(
        stream: _stationCollection.snapshots() ,
        builder: (context,snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting :
              return Center(child: CircularProgressIndicator());
              break;
          default:
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
                itemBuilder: (context,index){
                return _mainContent(snapshot.data.documents[index]);
                //return ...(snapshot,index);
            },
            );
          }
        },
      ),
    );
  }
  
 Widget _mainContent(DocumentSnapshot data){
    return Container(
        child: Column(
          children: <Widget>[
            Text(data["stationName"]),
            Text(data["stationId"].toString()),
            Text(data["stationNameM"])
          ],
        )
    );
  }
      
}
