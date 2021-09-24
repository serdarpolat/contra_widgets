import 'dart:math';

import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({Key? key}) : super(key: key);

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
            Onboard2Hero(),
            Onboard2Message(),
            Onboard2Buttons(),
            SizedBox(height: hh(context, 8)),
          ],
        ),
      ),
    );
  }
}

class Onboard2Hero extends StatelessWidget {
  const Onboard2Hero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 309),
      height: hh(context, 379),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: ww(context, 309),
              height: hh(context, 309),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: red,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              "peep-sit-3".getSvgImg,
              height: hh(context, 347),
            ),
          ),
        ],
      ),
    );
  }
}

class Onboard2Buttons extends StatelessWidget {
  const Onboard2Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 375),
      height: 108,
      padding: EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Onboarding2Indicators(),
          CircleShadowButton(
            onTap: () {},
            color: yellow,
            child: Center(
              child: Transform.rotate(
                angle: pi,
                child: SvgPicture.asset(
                  "arrow-back".getIcon,
                  width: ww(context, 28),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Onboarding2Indicators extends StatelessWidget {
  const Onboarding2Indicators({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 52),
      height: hh(context, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IndicatorItem(isActive: true),
          IndicatorItem(isActive: false),
          IndicatorItem(isActive: false),
        ],
      ),
    );
  }
}

class IndicatorItem extends StatelessWidget {
  const IndicatorItem({
    Key? key,
    required this.isActive,
  }) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 240),
      width: ww(context, 12),
      height: hh(context, 12),
      decoration: BoxDecoration(
        color: isActive ? red : white,
        shape: BoxShape.circle,
        border: Border.all(
          color: isActive ? red : black,
          width: ww(context, 2),
        ),
      ),
    );
  }
}

class Onboard2Message extends StatelessWidget {
  const Onboard2Message({
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
            style: h36(context, black),
          ),
          Spacer(),
          Text(
            "Wireframe is still important for ideation. It will help you to quickly test idea.",
            style: display21(context, grey),
          ),
        ],
      ),
    );
  }
}
