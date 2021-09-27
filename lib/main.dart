import 'package:contra_widgets/Views/Chat/Profile/Profile1.dart';
import 'package:flutter/material.dart';

import 'Views/Chat/Profile/Profile2.dart';
import 'Views/Chat/Profile/Profile3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contra Widgets',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.blue,
      ),
      home: Profile3(),
    );
  }
}
