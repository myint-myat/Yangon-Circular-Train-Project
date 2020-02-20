import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {

  final CollectionReference _newsCollection = Firestore.instance.collection("news");

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
                padding: EdgeInsets.only(top: 120),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: StreamBuilder(
                  stream: _newsCollection.snapshots(),
                  builder: (context,snapshot){
                    switch (snapshot.connectionState){
                      case ConnectionState.waiting :
                        return Center(child: CircularProgressIndicator(),);
                        break;
                      default:
                        return ListView.builder(
                            itemCount: snapshot.data.documents.length,
                            itemBuilder: (context,index){
                              return _newsBuildList(
                                  snapshot.data.documents[index]
                              );
                            }
                        );
                    }
                  },
                )
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
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 90),
                        child: Text(
                          'News',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
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

  Widget _newsBuildList(DocumentSnapshot data) {
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
         // Navigator.pushNamed(context, '/news_details');
          Navigator.pushReplacementNamed(context, '/news_details', arguments: {

            "newsTitle": data['newsTitle'],
//            "image" : data['image'],
            "description" : data['description']

          });
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 130,
              height: 110,
              //margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
                color: Colors.white,
                //border: Border.all(width: 3,color:Colors.black38),
              ),
              child: Center(
                child: Image.asset('assets/temp/tempnews.jpg'),
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
                          data['newsTitle'],
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
//                        Text(
//                          newsLists[index]['routes'],
//                          style: TextStyle(
//                              fontSize: 16, fontWeight: FontWeight.w500),
//                        ),
                      ],
                    ),
//                    Icon(
//                      Icons.navigate_next,
//                    ),
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
