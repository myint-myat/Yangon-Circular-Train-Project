

import 'package:flutter/material.dart';

//loading
import 'package:yct_app/loading/main_loading.dart';

//user main screen
import 'package:yct_app/user/user_home_screen.dart';

//Routes
import 'package:yct_app/user/routes/home_main_screen.dart';

//Trains
import 'package:yct_app/user/trains/trains_lists.dart';
import 'package:yct_app/user/trains/train_detail.dart';

//News
import 'package:yct_app/user/news/news_main.dart';
import 'package:yct_app/user/news/news_details.dart';

//Station
import 'package:yct_app/user/statiions/station_list.dart';
import 'package:yct_app/user/statiions/StationDetails.dart';

//Website view
import 'package:yct_app/user/website/web_view.dart';


//YBS and Trains
import 'package:yct_app/user/ybs_bus/bus_stop_lists.dart';
import 'package:yct_app/user/ybs_bus/thamaing_bus_stop.dart';
import 'package:yct_app/user/ybs_bus/market_station_bus_stop.dart';
import 'package:yct_app/user/ybs_bus/BaHanBusStop.dart';

void main() => runApp(MaterialApp(routes: {
      //app start loading
      '/': (context) => Loading(),

      //app user home screen
      '/user_home_screen': (context) => UserHomeScreen(),

      //Routes screen
      'routes': (context) => Routes(),

      //News screen
      '/news': (context) => News(),
      '/news_details': (context) => NewsDetails(),

      //Station screen
      'station': (context) => Station(),
      '/stationDetails' : (context) => StationDetails(),

      //Train screen
      'train_list': (context) => TrainsList(),
      '/train_detail': (context) => TrainDetail(),

      //Web view
      'web_view': (context) => WebView(),

      //YBS and Trains
      '/bus_stop_lists' :(context) => BusStopLists(),
      '/thamaing_bus_stop' : (context) => ThamaingBusStop(),
      '/market_station_bus_stop' : (context) => MarketStationBusStop(),
      '/bahan_bus_stop' : (context)  => BaHanBusStop(),

    }));
