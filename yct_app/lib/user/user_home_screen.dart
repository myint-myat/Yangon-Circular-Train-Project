import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class UserHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 90),
              child: Center(
                child: Image.asset("assets/images/user/commom/railwayLogo.png"),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              //color: Colors.cyan,
              margin: EdgeInsets.symmetric(vertical: 160),
              child: Center(
                child: Text('Yangon Circular Train',
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      color: Colors.red,
                      fontWeight: FontWeight.w600
                  ),),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 260),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 140.0,
                        height: 150.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(80.0),
                              bottomLeft: Radius.circular(80.0),
                              bottomRight: Radius.circular(10.0),
                            )),
                        buttonColor: Colors.orange,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'routes');
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/images/user/routes/route.png'),
                              Text(
                                'Routes',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonTheme(
                        minWidth: 140.0,
                        height: 150.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80.0),
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(80.0),
                            )),
                        buttonColor: Colors.orange,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'station',);
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/user/stations/station.png',
                                height: 60,
                                width: 60,
                              ),
                              Text('Station',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16.0,),
                              )],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 140.0,
                        height: 150.0,
                        buttonColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80.0),
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(80.0),
                            )),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'train_list');
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/user/trains/train.png',
                                height: 60,
                                width: 60,
                              ),
                              Text('Trains',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonTheme(
                        minWidth: 140.0,
                        height: 150.0,
                        buttonColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(80.0),
                              bottomLeft: Radius.circular(80.0),
                              bottomRight: Radius.circular(5.0),
                            )),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/news');
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/user/news/news.png',
                                height: 60,
                                width: 60,
                              ),
                              Text("News",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        // both default to 16
        marginRight: 30,
        marginBottom: 50,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.orange,
        foregroundColor: Colors.black,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              child: Icon(Icons.directions_bus,color: Colors.black,),
              backgroundColor: Colors.orangeAccent,
              label: 'ရထားမှ YBS ပြောင်းစီးရန်မှတ်တိုင်များ',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => Navigator.pushNamed(context, '/bus_stop_lists')
          ),
          SpeedDialChild(
              child: Image.asset('assets/images/user/bottom_bar/web_view/website.png',height: 10,width: 10,color: Colors.white,),
              backgroundColor: Colors.orangeAccent,
              label: 'Myanmar Railway Website',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => Navigator.pushNamed(context, 'web_view')
          ),
          SpeedDialChild(
            child: Icon(Icons.map),
            backgroundColor: Colors.blue,
            label: 'Yangon Circular Train Map',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => Navigator.pushNamed(context, '/circular_map')
          ),
          SpeedDialChild(
            child: Icon(Icons.info),
            backgroundColor: Colors.green,
            label: 'Abouts',labelBackgroundColor: Colors.cyan,
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => Navigator.pushNamed(context, '/app_information'),
          ),
        ],
      ),
    );
  }
}
