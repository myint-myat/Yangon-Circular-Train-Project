import 'package:flutter/material.dart';

class BusStopLists extends StatefulWidget {
  @override
  _BusStopListsState createState() => _BusStopListsState();
}

class _BusStopListsState extends State<BusStopLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                            'သမိုင်းဘူတာ',
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
                            'ရထား မှ YBS သို့ပြောင်းစီးနိုင်သည့် မှတ်တိုင်များ',
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
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/thamaing_bus_stop');
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.cyan,
                  margin: const EdgeInsets.symmetric(vertical: 180,horizontal: 10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(Icons.directions_bus),
                        //SizedBox(width: 30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Thamaing Station Bus Stop',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18
                              ),
                            ),
                            Text('သမိုင်းဘူတာမှတ်တိုင်',
                              style: TextStyle(
                                  fontSize: 18
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.navigate_next,)
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/market_station_bus_stop');
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.cyan,
                  margin: const EdgeInsets.symmetric(vertical: 290,horizontal: 10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(Icons.directions_bus),
                        //SizedBox(width: 30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('‌Market Station Bus Stop',
                              style: TextStyle(
                                  fontSize: 18
                              ),
                            ),
                            Text('‌ေစ◌ျးဘူတာမှတ်တိုင်',
                              style: TextStyle(
                                  fontSize: 18
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.navigate_next,)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.cyan,
                margin: const EdgeInsets.symmetric(vertical: 400,horizontal: 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.directions_bus,color: Colors.white,),
                      //SizedBox(width: 30,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('‌U Ba Han Bus Stop',
                            style: TextStyle(
                                fontSize: 18,
                              color: Colors.white
                            ),
                          ),
                          Text('‌ဘဟန်မှတ်တိုင်',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.navigate_next,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
