import 'package:flutter/material.dart';

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
                            Navigator.pushNamed(context, 'news_details');
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
        )
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.blue,
        child: Container(
          height: 60,
          child: Row(
            children: <Widget>[
              SizedBox(width: 50,),
              IconButton(
                icon: Image.asset('assets/images/user/bottom_bar/ybs/ybs.jpg',height: 30,width: 30,),
                onPressed: (){
                  Navigator.pushNamed(context, '/bus_stop_lists');
                },
              ),
              SizedBox(width: 50,),
              IconButton(
                icon: Image.asset('assets/images/user/bottom_bar/web_view/website.png',height: 30,width: 30,color: Colors.white,),
                onPressed: (){
                  Navigator.pushNamed(context, 'web_view');
                },
              ),
              SizedBox(width: 50,),
              IconButton(
                icon: Image.asset('assets/images/user/bottom_bar/google_map/check_location.png',height: 30,width: 30,color:Colors.white),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.more_horiz),
        backgroundColor: Colors.orange,
        onPressed: (){},
      ),
    );
  }
}
