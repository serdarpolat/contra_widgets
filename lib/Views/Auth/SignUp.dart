import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
            children: [
              AuthAppbar(),
              SizedBox(height: hh(context, 28)),
              Container(
                width: w(context),
                height: hh(context, 530),
                padding: all24(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: hExtra36(context, black),
                    ),
                    SizedBox(height: hh(context, 12)),
                    Text(
                      "You have chance to create new account if you really want to.",
                      style: displayMedium17(context, grey),
                    ),
                    SizedBox(height: hh(context, 24)),
                    InputField(
                      obsecure: false,
                      hintText: "Full Name",
                      prefix: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, top: 8, bottom: 8, right: 8),
                        child: SvgPicture.asset(
                          "user".getIcon,
                          width: 24,
                          color: black,
                        ),
                      ),
                    ),
                    SizedBox(height: hh(context, 24)),
                    InputField(
                      obsecure: false,
                      hintText: "Email address",
                      prefix: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, top: 8, bottom: 8, right: 8),
                        child: SvgPicture.asset(
                          "mail".getIcon,
                          width: 24,
                          color: black,
                        ),
                      ),
                    ),
                    SizedBox(height: hh(context, 24)),
                    InputField(
                      obsecure: true,
                      hintText: "Password",
                      prefix: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, top: 8, bottom: 8, right: 8),
                        child: SvgPicture.asset(
                          "lock".getIcon,
                          width: 24,
                          color: black,
                        ),
                      ),
                    ),
                    SizedBox(height: hh(context, 32)),
                    LongShadowButton(
                      bgColor: yellow,
                      borderColor: black,
                      title: Text(
                        "Sign up",
                        style: displayExtraBold21(context, black),
                      ),
                      height: 60,
                      onTap: () {},
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          "Already have account? ",
                          style: displayMedium13(context, black),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Go here",
                            style: displayMedium13(context, red),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
