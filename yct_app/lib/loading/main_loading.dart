import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  //Go to main screen
  void main()
  {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushNamed(context, '/user_home_screen');
    });
  }

  @override
  void initState() {
    super.initState();
    main();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SpinKitCubeGrid(
            color: Colors.blue,
            size: 50.0,
          ),
        )
    );
  }
}
