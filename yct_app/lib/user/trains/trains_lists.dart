import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TrainsList extends StatefulWidget {
  @override
  _TrainsListState createState() => _TrainsListState();
}

class _TrainsListState extends State<TrainsList> {

  final CollectionReference _trainsCollection = Firestore.instance.collection("trains");

  final List<Map> trainsLists = [
    {
      "trainId": "က - ၁",
      "fromTo": "Insein Station To Yangon Station",
      "routes": "အင်းစိန်ဘူတာ မှ ရန်ကုန်ဘူတာ"
    },
    {
      "trainId": "က - ၂",
      "fromTo": "Yangon Station To Insein Station",
      "routes": "ရန်ကုန်ဘူတာ မှ အင်းစိန်"
    },
    {
      "trainId": "ခ - ၃",
      "fromTo": "Insein Station To Hlaw Kar Station",
      "routes": "အင်းစိန်ဘူတာ မှ လှော်ကားဘူတာ"
    },
    {
      "trainId": "ခ - ၄",
      "fromTo": "Hlaw Kar Station To Insein Station",
      "routes": "လှော်ကားဘူတာ မှ အင်းစိန်ဘူတာ"
    },
    {
      "trainId": "သ - ၁",
      "fromTo": "Insein Station To Mingalardon Station",
      "routes": "အင်းစိန်ဘူတာ မှ ဘူတာ"
    },
    {
      "trainId": "သ - ၂",
      "fromTo": "Mingalardon Station To Insein Station",
      "routes": "ရန်ကုန်ဘူတာ မှ အင်းစိန်"
    },
    {
      "trainId": "က - ၇",
      "fromTo": "Insein Statio To Yangon Station",
      "routes": "အင်းစိန်ဘူတာ မှ ရန်ကုန်ဘူတာ"
    },
    {
      "trainId": "က - ၈",
      "fromTo": "Yangon Station To Insein Station",
      "routes": "ရန်ကုန်ဘူတာ မှ အင်းစိန်"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 145),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: StreamBuilder(
                  stream: _trainsCollection.snapshots(),
                  builder: (context,snapshot){
                    switch (snapshot.connectionState){
                      case ConnectionState.waiting :
                        return Center(child: CircularProgressIndicator(),);
                        break;
                      default:
                        return ListView.builder(
                            itemCount: snapshot.data.documents.length,
                            itemBuilder: (context,index){
                              return _trainBuildList(
                                  snapshot.data.documents[index]
                              );
                            }
                        );
                    }
                  },
                ),
              ),
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
                        'Trains',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/circular_map');
                        },
                        icon: Icon(
                          Icons.map,
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
                          cursorColor: Theme.of(context).primaryColor,
                          decoration: InputDecoration(
                              hintText: "Search Train",
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

  Widget _trainBuildList(DocumentSnapshot data) {
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
          Navigator.pushReplacementNamed(context, '/train_detail',arguments: {
            "trainId" : data['trainId'],
            "routes" : data['routes'],
            'routesM' :data['routesM']
          });
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
                  data['trainId'],
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
                          data['routes'],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          data['routesM'],
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
