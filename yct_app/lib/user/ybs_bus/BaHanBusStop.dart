import 'package:flutter/material.dart';

class BaHanBusStop extends StatefulWidget {
  @override
  _BaHanBusStopState createState() => _BaHanBusStopState();
}

class _BaHanBusStopState extends State<BaHanBusStop> {
  final List<Map> ybsLists = [
    {
      "busId" : "15",
      "routes" : "သမိုင်း - တညင်းကုန်း",
      "colors" : Colors.red
    },
    {
      "busId" : "16(A)",
      "routes" : "သမိုင်း - တညင်းကုန်း",
      "colors" : Colors.red
    },
    {
      "busId" : "16(B)",
      "routes" : "သမိုင်း - တညင်းကုန်း",
      "colors" : Colors.red
    },
    {
      "busId" : "19",
      "routes" : "သမိုင်း - တညင်းကုန်း",
      "colors" : Colors.red
    },{
      "busId" : "61",
      "routes" : "သမိုင်း - တညင်းကုန်း",
      "colors" : Colors.deepPurpleAccent
    },{
      "busId" : "68",
      "routes" : "သမိုင်း - တညင်းကုန်း",
      "colors" : Colors.deepPurpleAccent
    },
    {
      "busId" : "79",
      "routes" : "သမိုင်း - တညင်းကုန်း",
      "colors" : Colors.deepPurpleAccent
    },
    {
      "busId" : "83",
      "routes" : "သမိုင်း - တညင်းကုန်း",
      "colors" : Colors.deepPurpleAccent
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
                    itemCount: ybsLists.length,
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
                        'စေ◌ျးဘူတာမှတ်တိုင်',
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
                      height: 120,
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
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
      height: 100,
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
              height: 100,
              //margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
                color: ybsLists[index]['colors'],
                //border: Border.all(width: 3,color:Colors.black38),
              ),
              child: Center(
                child: Text(
                  ybsLists[index]['busId'],
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
                          ybsLists[index]['routes'],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
//                        Text(
//                          trainsLists[index]['name'],
//                          style: TextStyle(
//                              fontSize: 18, fontWeight: FontWeight.w500),
//                        ),
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
