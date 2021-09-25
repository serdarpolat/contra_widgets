import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding4 extends StatelessWidget {
  const Onboarding4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: white,
        child: Column(
          children: [
            Spacer(),
            Onboard3Hero(),
            SizedBox(height: h24(context) * 2),
            Onboard3Message(),
            SizedBox(height: h12(context) * 3),
            Onboard3Buttons(),
            SizedBox(height: h12(context) * 3),
          ],
        ),
      ),
    );
  }
}

class Onboard3Hero extends StatelessWidget {
  const Onboard3Hero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 309),
      height: hh(context, 330),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: ww(context, 309),
              height: hh(context, 309),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: yellow50,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              "peep-09".getSvgImg,
              height: hh(context, 330),
            ),
          ),
        ],
      ),
    );
  }
}

class Onboard3Buttons extends StatelessWidget {
  const Onboard3Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 375),
      height: hh(context, 60),
      padding: EdgeInsets.symmetric(horizontal: ww(context, 24)),
      child: BorderedButton(
        onTap: () {},
        bgColor: black,
        borderColor: black,
        title: Text(
          "Get started",
          style: TextStyle(
            color: white,
            fontSize: hh(context, 21),
            fontWeight: FontWeight.w900,
            height: 1.333,
          ),
        ),
      ),
    );
  }
}

class Onboard3Message extends StatelessWidget {
  const Onboard3Message({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 375),
      height: hh(context, 206),
      padding: EdgeInsets.symmetric(
        horizontal: w24(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "OPEN SOURCE",
            style: displayBold21(context, grey400),
          ),
          Spacer(),
          Container(
            width: ww(context, 292),
            child: Text(
              "Contra wireframe kit",
              style: hExtra44(context, black),
            ),
          ),
        ],
      ),
    );
  }
}
