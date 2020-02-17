import 'package:flutter/material.dart';

class TrainDetail extends StatefulWidget {
  @override
  _TrainDetailState createState() => _TrainDetailState();
}

class _TrainDetailState extends State<TrainDetail> {

  final List<Map> routeList=[
    {
      "trainNo" : "က - ၁",
      "stationName" : "Insein Station(အင်းစိန်ဘူတာ)",
      "stationNmaeM" : "အင်းစိန်ဘူတာ",
      "arriveTime" : "12:30 pm",
      "deptTime" : "12:33 pm",
      "time" : "arrive     -  depart 12:33 pm"
    },
    {
      "trainNo" : "က - ၁",
      "stationName" : "Gyogone Station(ကြို့ကုန်းဘူတာ)",
      "stationNmaeM" : "အင်းစိန်ဘူတာ",
      "arriveTime" : "12:30 pm",
      "deptTime" : "12:33 pm",
      "time" : "arrive 12:30 pm - depart 12:33 pm"
    },
    {
      "trainNo" : "က - ၁",
      "stationName" : "Thamaingmyothit Station(သမိုင်းမြိူ့သစ်ဘူတာ)",
      "stationNmaeM" : "အင်းစိန်ဘူတာ",
      "arriveTime" : "12:30 pm",
      "deptTime" : "12:33 pm",
      "time" : "arrive 12:30 pm - depart 12:33 pm"
    },
    {
      "trainNo" : "က - ၁",
      "stationName" : "Insein Station",
      "stationNmaeM" : "အင်းစိန်ဘူတာ",
      "arriveTime" : "12:30 pm",
      "deptTime" : "12:33 pm",
      "time" : "arrive 12:30 pm - depart 12:33 pm"
    },
    {
      "trainNo" : "က - ၁",
      "stationName" : "Insein Station",
      "stationNmaeM" : "အင်းစိန်ဘူတာ",
      "arriveTime" : "12:30 pm",
      "deptTime" : "12:33 pm",
      "time" : "arrive 12:30 pm - depart 12:33 pm"
    },
    {
      "trainNo" : "က - ၁",
      "stationName" : "Gyogone Station",
      "stationNmaeM" : "အင်းစိန်ဘူတာ",
      "arriveTime" : "12:30 pm",
      "deptTime" : "12:33 pm",
      "time" : "arrive 12:30 pm - depart 12:33 pm"
    },
    {
      "trainNo" : "က - ၁",
      "stationName" : "Thamaing Myothit Station",
      "stationNmaeM" : "အင်းစိန်ဘူတာ",
      "arriveTime" : "12:30 pm",
      "deptTime" : "12:33 pm",
      "time" : "arrive 12:30 pm - depart 12:33 pm"
    },
    {
      "trainNo" : "က - ၁",
      "stationName" : "Gyogone Station",
      "stationNmaeM" : "အင်းစိန်ဘူတာ",
      "arriveTime" : "12:30 pm",
      "deptTime" : "12:33 pm",
      "time" : "arrive 12:30 pm - depart 12:33 pm"
    },
    {
      "trainNo" : "က - ၁",
      "stationName" : "Thamaing Myothit Station",
      "stationNmaeM" : "အင်းစိန်ဘူတာ",
      "arriveTime" : "12:30 pm",
      "deptTime" : "12:33 pm",
      "time" : "arrive 12:30 pm - depart 12:33 pm"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Train Detail"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:160),
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: routeList.length,
                    itemBuilder: (BuildContext context,int index){
                      return routeBuildList(context, index);
                    }
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                height: 110,
                width: double.infinity,
                //color: Colors.blueAccent,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Image.asset('assets/images/user/trains/train.png',height: 30,width: 30,),
                        SizedBox(width: 10,),
                        Text("က - ၃",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Image.asset('assets/images/user/stations/station.png',height: 30,width: 30,),
                        SizedBox(width: 10,),
                        Text('Insein Station To Yangon Station',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Image.asset('assets/images/user/stations/station.png',height: 30,width: 30,),
                        SizedBox(width: 10,),
                        Text('အင်းစိန်ဘူတာ မှ ရန်ကုန်ဘူတာ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 130),
                child: Center(
                  child: Text("Station",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget routeBuildList(BuildContext context,int index){
    return Container(
      height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.cyan,width: 1.0,style: BorderStyle.solid),
          color: Colors.white
        ),
      child: Row(
        children: <Widget>[
          Container(
            width: 80,
            color: Colors.white,
            child: Image.asset('assets/images/user/trains/railway.png',height: 100,),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset('assets/images/user/stations/station.png',height: 20,width: 20,),
                    SizedBox(width: 10,),
                    Text(routeList[index]['stationName'],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset('assets/images/user/trains/clock.png',height: 20,width: 20,),
                    SizedBox(width: 10,),
                    Text(routeList[index]['time'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    )
                  ],
                )
              ],
            ),

          )
        ],
      )
    );
  }
}
