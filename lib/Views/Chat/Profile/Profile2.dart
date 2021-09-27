import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile2 extends StatelessWidget {
  const Profile2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: white,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              SizedBox(height: hh(context, 24)),
              InfosSection(),
              SizedBox(height: hh(context, 24)),
              ButtonsSection(),
              SizedBox(height: hh(context, 24)),
              ImagesSection(),
              SizedBox(height: hh(context, 24)),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(context),
      height: hh(context, 479),
      child: Stack(
        children: [
          Container(
            width: w(context),
            height: hh(context, 406.25),
            color: yellow,
            child: SvgPicture.asset("peep-08".getSvgImg),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: w(context),
              height: hh(context, 120),
              color: black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Lamboci",
                    style: hExtra36(context, white),
                  ),
                  Text(
                    "@lamboos",
                    style: displayMedium17(context, white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: hh(context, 54),
            left: ww(context, 24),
            child: CircleShadowButton(
              child: SvgPicture.asset("chevron-left".getIcon),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class InfosSection extends StatelessWidget {
  const InfosSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                "276",
                style: hExtra27(context, black),
              ),
              SizedBox(height: hh(context, 8)),
              Text(
                "Images",
                style: displayMedium15(context, black),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "62K",
                style: hExtra27(context, black),
              ),
              SizedBox(height: hh(context, 8)),
              Text(
                "Followers",
                style: displayMedium15(context, black),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "27",
                style: hExtra27(context, black),
              ),
              SizedBox(height: hh(context, 8)),
              Text(
                "Following",
                style: displayMedium15(context, black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonsSection extends StatefulWidget {
  const ButtonsSection({Key? key}) : super(key: key);

  @override
  _ButtonsSectionState createState() => _ButtonsSectionState();
}

class _ButtonsSectionState extends State<ButtonsSection> {
  int section = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal24(context),
      child: Container(
        width: w(context) - (w24(context) * 2),
        height: hh(context, 52),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 240),
              top: 0,
              bottom: 0,
              left: ((w(context) - (w24(context) * 2)) / 3) * section,
              child: Container(
                width: ((w(context) - (w24(context) * 2)) / 3) - 4,
                height: hh(context, 56),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(hh(context, 52)),
                  color: green,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        section = 0;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(hh(context, 56))),
                    child: Container(
                      child: Center(
                        child: Text(
                          "Photo",
                          style: displayBold21(
                              context, section == 0 ? white : black),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        section = 1;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(hh(context, 56))),
                    child: Container(
                      child: Center(
                        child: Text(
                          "Video",
                          style: displayBold21(
                              context, section == 1 ? white : black),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        section = 2;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(hh(context, 56))),
                    child: Container(
                      child: Center(
                        child: Text(
                          "About",
                          style: displayBold21(
                              context, section == 2 ? white : black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(hh(context, 52)),
          color: white,
          border: baseBorder(context),
        ),
      ),
    );
  }
}

class ImagesSection extends StatelessWidget {
  const ImagesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal24(context),
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: ww(context, 16),
        spacing: ww(context, 16),
        children: List.generate(4, (index) {
          var colors = [yellow, red, grey, pink];
          return Container(
            width: ww(context, 155),
            height: ww(context, 160),
            child: Center(
              child: SvgPicture.asset(
                "image".getIcon,
                color: white,
                width: ww(context, 40),
              ),
            ),
            decoration: baseDecoration(
              context,
              bgColor: colors[index],
            ),
          );
        }),
      ),
    );
  }
}
