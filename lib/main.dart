import 'package:contra_widgets/Views/Auth/SignIn1.dart';
import 'package:contra_widgets/Views/Auth/SignIn2.dart';
import 'package:contra_widgets/Views/Auth/SignIn3.dart';
import 'package:contra_widgets/Views/Onboarding/Onboarding1.dart';
import 'package:contra_widgets/Views/Onboarding/Onboarding2.dart';
import 'package:contra_widgets/Views/Onboarding/Onboarding3.dart';
import 'package:contra_widgets/Views/Onboarding/Onboarding4.dart';
import 'package:contra_widgets/Views/Splash.dart';
import 'package:flutter/material.dart';

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
      home: SignIn3(),
    );
  }
}
