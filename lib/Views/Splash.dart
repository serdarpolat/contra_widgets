import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        color: blue,
        child: Center(
          child: SvgPicture.asset(
            "assets/icons/logo-mark.svg",
            width: ww(context, 150),
          ),
        ),
      ),
    );
  }
}
