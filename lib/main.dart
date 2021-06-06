import 'package:charity_app/s_family_add.dart';
import 'package:charity_app/s_home_structure.dart';
import 'package:charity_app/tests/x_test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'map/googleMapScreen.dart';

void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TounsKhir',
      theme:  ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }

}

