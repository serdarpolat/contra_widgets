import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({Key? key}) : super(key: key);

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
            Onboard1Hero(),
            SizedBox(height: h24(context) * 2),
            Onboard1Message(),
            Onboard1Buttons(),
            SizedBox(height: hh(context, 8)),
          ],
        ),
      ),
    );
  }
}

class Onboard1Hero extends StatelessWidget {
  const Onboard1Hero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 309),
      height: hh(context, 309),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: ww(context, 309),
              height: hh(context, 309),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: yellow,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              "peep-05".getSvgImg,
              height: hh(context, 252),
            ),
          ),
        ],
      ),
    );
  }
}

class Onboard1Buttons extends StatelessWidget {
  const Onboard1Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 375),
      height: 108,
      padding: EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            child: BorderedButton(
              onTap: () {},
              bgColor: white,
              borderColor: black,
              title: Text(
                "Skip",
                style: TextStyle(
                  color: black,
                  fontSize: hh(context, 21),
                  fontWeight: FontWeight.w900,
                  height: 1.333,
                ),
              ),
            ),
          ),
          SizedBox(width: ww(context, 12)),
          Expanded(
            child: BorderedButton(
              onTap: () {},
              bgColor: black,
              borderColor: black,
              title: Text(
                "Next",
                style: TextStyle(
                  color: white,
                  fontSize: hh(context, 21),
                  fontWeight: FontWeight.w900,
                  height: 1.333,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Onboard1Message extends StatelessWidget {
  const Onboard1Message({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 375),
      height: hh(context, 252),
      padding: EdgeInsets.symmetric(
        horizontal: w24(context),
        vertical: h16(context) * 2,
      ),
      child: Column(
        children: [
          Text(
            "Contra wireframe kit",
            textAlign: TextAlign.center,
            style: h36(context, black),
          ),
          Spacer(),
          Text(
            "Wireframe is still important for ideation. It will help you to quickly test idea.",
            textAlign: TextAlign.center,
            style: display21(context, grey),
          ),
        ],
      ),
    );
  }
}
