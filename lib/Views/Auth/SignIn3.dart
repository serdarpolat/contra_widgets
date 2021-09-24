import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn3 extends StatelessWidget {
  const SignIn3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: yellow,
        child: Stack(
          children: [
            Container(
              width: w(context),
              height: ww(context, 596),
              child: SvgPicture.asset(
                "big-standing".getSvgImg,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: w(context),
              height: h(context),
              child: Column(
                children: [
                  AuthAppbar(),
                  Spacer(),
                  Container(
                    width: w(context),
                    height: ww(context, 400),
                    padding: EdgeInsets.only(
                      left: w24(context),
                      right: w24(context),
                      bottom: w24(context) + w12(context),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(w24(context)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Login",
                            style: h36(context, black),
                          ),
                          Text(
                            "You don’t think you should login first and behave like human not robot.",
                            textAlign: TextAlign.center,
                            style: displayMedium17(context, grey),
                          ),
                          BorderedButton(
                            onTap: () {},
                            bgColor: black,
                            borderColor: black,
                            height: 60,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "mail".getIcon,
                                  color: white,
                                ),
                                SizedBox(width: ww(context, 5)),
                                Text(
                                  "Email",
                                  style: displayBold21(context, white),
                                ),
                              ],
                            ),
                          ),
                          BorderedButton(
                            onTap: () {},
                            bgColor: blue,
                            borderColor: blue,
                            height: 60,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "facebook".getIcon,
                                  color: white,
                                ),
                                SizedBox(width: ww(context, 5)),
                                Text(
                                  "Facebook",
                                  style: displayBold21(context, white),
                                ),
                              ],
                            ),
                          ),
                          BorderedButton(
                            onTap: () {},
                            bgColor: green,
                            borderColor: green,
                            height: 60,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "twitter".getIcon,
                                  color: white,
                                ),
                                SizedBox(width: ww(context, 5)),
                                Text(
                                  "Twitter",
                                  style: displayBold21(context, white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(w16(context)),
                        color: white,
                        border: Border.all(
                          color: black,
                          width: w2(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
