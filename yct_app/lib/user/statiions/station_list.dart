import 'package:flutter/material.dart';

class Station extends StatefulWidget {
  @override
  _StationState createState() => _StationState();
}

class _StationState extends State<Station> {
  final List<Map> trainsLists = [
    {
      "stationId" : "1",
      "stationName" : "Yangon Central Station",
      "name" : "ရန်ကုန် ဘူတာ"
    },
    {
      "stationId" : "2",
      "stationName" : "Pagoda Road Station",
      "name" : "ဘုရားလမ်း ဘူတာ"
    },
    {
      "stationId" : "3",
      "stationName" : "Lanmadaw Station",
      "name" : "လမ်းမတော် ဘူတာ"
    },
    {
      "stationId" : "4",
      "stationName" : "Pyay Road Station",
      "name" : "ပြည်လမ်း ဘူတာ"
    },
    {
      "stationId" : "5",
      "stationName" : "Shan Road Station",
      "name" : "ရှမ်းလမ်း ဘူတာ"
    },
    {
      "stationId" : "6",
      "stationName" : "Ahlone Road Station",
      "name" : "အလုံလမ်း ဘူတာ"
    },
    {
      "stationId" : "7",
      "stationName" : "Panhlaing Road Station",
      "name" : "ပန်းလှိုင်လမ်း ဘူတာ"
    },
    {
      "stationId" : "8",
      "stationName" : "Kemmedine Station",
      "name" : "ကြည့်မြင့်တိုင် ဘူတာ"
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
                child: ListView.builder(
                    itemCount: trainsLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
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
                        'Station',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {},
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
                          cursorColor: Theme.of(context).primaryColor,
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

  Widget buildList(BuildContext context, int index) {
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
                  trainsLists[index]['stationId'],
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
                          trainsLists[index]['stationName'],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          trainsLists[index]['name'],
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
