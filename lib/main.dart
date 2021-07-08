import 'package:flutter/material.dart';
import 'package:flutter_e_commere/pages/home.dart';
//import 'package:flutter_e_commere/pages/home.dart';



void main() =>
    runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,

      theme:ThemeData(
          primarySwatch: Colors.deepOrange
      ),
      routes:{
        "/":(context)=>HomePage(),

      },


      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

