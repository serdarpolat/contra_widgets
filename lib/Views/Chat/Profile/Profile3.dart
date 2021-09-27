import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile3 extends StatelessWidget {
  const Profile3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: white,
        child: Stack(
          children: [
            Container(
              width: w(context),
              height: hh(context, 406.25),
              color: red,
              child: Stack(
                children: [
                  Container(
                    width: w(context),
                    height: hh(context, 406.25),
                    child: SvgPicture.asset("peep-03".getSvgImg),
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
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: w(context),
                height: hh(context, 414),
                child: Column(
                  children: [
                    SizedBox(height: hh(context, 16)),
                    Container(
                      width: ww(context, 61),
                      height: hh(context, 6),
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    Container(
                      width: w(context),
                      padding: all24(context),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PAINTER",
                            style: displayBold17(context, green),
                          ),
                          SizedBox(height: hh(context, 4)),
                          Text("Genbai Benno", style: hExtra36(context, black)),
                          SizedBox(height: hh(context, 12)),
                          Padding(
                            padding: EdgeInsets.only(
                                right: w16(context) + w24(context)),
                            child: Text(
                              "I’m a painter you know. I can paint whatever I want. If you want to buy painting message.",
                              style: displayMedium21(context, grey),
                            ),
                          ),
                          SizedBox(height: hh(context, 16)),
                          Container(
                            width: ww(context, 208),
                            height: hh(context, 36),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: ww(context, 82),
                                  height: hh(context, 36),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: hh(context, 36),
                                        height: hh(context, 36),
                                        child: ClipOval(
                                          child: SvgPicture.asset(
                                            "avatar-2".getSvgImg,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: red,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: white,
                                            width: hh(context, 2),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: hh(context, 22),
                                        child: Container(
                                          width: ww(context, 82),
                                          height: hh(context, 36),
                                          child: Stack(
                                            children: [
                                              Container(
                                                width: hh(context, 36),
                                                height: hh(context, 36),
                                                child: ClipOval(
                                                  child: SvgPicture.asset(
                                                    "avatar-4".getSvgImg,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  color: green,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: white,
                                                    width: hh(context, 2),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: hh(context, 46),
                                        child: Container(
                                          width: ww(context, 82),
                                          height: hh(context, 36),
                                          child: Stack(
                                            children: [
                                              Container(
                                                width: hh(context, 36),
                                                height: hh(context, 36),
                                                child: ClipOval(
                                                  child: SvgPicture.asset(
                                                    "avatar-1".getSvgImg,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  color: pink,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: white,
                                                    width: hh(context, 2),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "123k Followers",
                                  style: displayBold15(context, grey),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: hh(context, 35)),
                          Row(
                            children: [
                              Expanded(
                                child: Material(
                                  borderRadius: BorderRadius.circular(16),
                                  color: white,
                                  child: InkWell(
                                    onTap: () {},
                                    borderRadius: BorderRadius.circular(16),
                                    child: Container(
                                      height: hh(context, 60),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: ww(context, 24),
                                        // vertical: hh(context, 24),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Follow",
                                          style: displayBold21(context, black),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: black,
                                          width: ww(context, 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: ww(context, 13)),
                              Expanded(
                                child: Material(
                                  borderRadius: BorderRadius.circular(16),
                                  color: black,
                                  child: InkWell(
                                    onTap: () {},
                                    borderRadius: BorderRadius.circular(16),
                                    child: Container(
                                      height: hh(context, 60),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: ww(context, 24),
                                        // vertical: hh(context, 24),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Message",
                                          style: displayBold21(context, white),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: black,
                                          width: ww(context, 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: black,
                      offset: Offset(0, -hh(context, 6)),
                      blurRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(hh(context, 16)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
