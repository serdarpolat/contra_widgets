import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: red,
        child: Column(
          children: [
            Spacer(),
            Onboard3Hero(),
            SizedBox(height: h24(context) * 2),
            Onboard3Message(),
            Onboard3Indicators(),
            SizedBox(height: hh(context, 28)),
            Onboard3Buttons(),
            SizedBox(height: hh(context, 8)),
          ],
        ),
      ),
    );
  }
}

class Onboard3Indicators extends StatelessWidget {
  const Onboard3Indicators({
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
        color: isActive ? white : Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: white,
          width: ww(context, 2),
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
      height: hh(context, 343),
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
              "peep-06".getSvgImg,
              height: hh(context, 294),
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
      height: 108,
      padding: EdgeInsets.all(24),
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
      height: hh(context, 224),
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
            "Wireframe is still important for ideation.",
            textAlign: TextAlign.center,
            style: display21(context, grey),
          ),
        ],
      ),
    );
  }
}
