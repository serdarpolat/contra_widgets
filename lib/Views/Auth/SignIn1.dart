import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn1 extends StatelessWidget {
  const SignIn1({Key? key}) : super(key: key);

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
              SizedBox(height: hh(context, 37)),
              SvgPicture.asset(
                "logo-mark".getIcon,
                width: ww(context, 120),
              ),
              SizedBox(height: hh(context, 24)),
              Container(
                width: w(context),
                height: hh(context, 414),
                padding: all24(context),
                child: Column(
                  children: [
                    Text(
                      "Login",
                      style: h36(context, black),
                    ),
                    SizedBox(height: hh(context, 24)),
                    InputField(
                      obsecure: false,
                      hintText: "Email address",
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
                    SizedBox(height: hh(context, 48)),
                    BorderedButton(
                      bgColor: black,
                      borderColor: black,
                      height: hh(context, 60),
                      onTap: () {},
                      title: Row(
                        children: [
                          Text(
                            "Sign in",
                            style: displayExtraBold21(context, white),
                          ),
                          SvgPicture.asset(
                            "chevron-right".getIcon,
                            color: white,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Are you new? ",
                          style: displayMedium13(context, black),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Create new",
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
