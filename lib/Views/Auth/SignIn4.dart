import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn4 extends StatelessWidget {
  const SignIn4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: red,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: hh(context, -15),
              left: 31,
              child: Container(
                width: w(context),
                height: ww(context, 842),
                child: SvgPicture.asset(
                  "peep-standing-5".getSvgImg,
                  fit: BoxFit.cover,
                ),
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
                    height: hh(context, 340),
                    child: Column(
                      children: [
                        Container(
                          height: hh(context, 64),
                          padding: horizontal24(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Welcome Back",
                                style: displayExtraBold24(context, black),
                              ),
                              SvgPicture.asset("cross".getIcon),
                            ],
                          ),
                        ),
                        Divider(
                          color: black,
                          height: 1,
                          thickness: hh(context, 2),
                        ),
                        Container(
                          height: hh(context, 270),
                          padding: all24(context),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InputField(
                                obsecure: false,
                                hintText: "Email Address",
                                prefix: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 14, top: 8, bottom: 8, right: 10),
                                  child: SvgPicture.asset(
                                    "user".getIcon,
                                    color: black,
                                  ),
                                ),
                              ),
                              InputField(
                                obsecure: true,
                                hintText: "Password",
                                prefix: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 14, top: 8, bottom: 8, right: 10),
                                  child: SvgPicture.asset(
                                    "lock".getIcon,
                                    color: black,
                                  ),
                                ),
                              ),
                              BorderedButton(
                                bgColor: black,
                                borderColor: black,
                                height: hh(context, 60),
                                onTap: () {},
                                title: Row(
                                  children: [
                                    Text(
                                      "Continue",
                                      style: displayExtraBold21(context, white),
                                    ),
                                    SvgPicture.asset(
                                      "chevron-right".getIcon,
                                      color: white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(ww(context, 16)),
                      ),
                      border: Border.all(
                        width: ww(context, 2),
                        color: black,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: black,
                          offset: Offset(0, -6),
                          blurRadius: 0,
                        ),
                      ],
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
