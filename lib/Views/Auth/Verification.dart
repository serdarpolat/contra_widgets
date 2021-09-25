import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

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
              Container(
                width: w(context),
                height: hh(context, 379),
                child: Stack(
                  children: [
                    Container(
                      width: w(context),
                      height: hh(context, 379),
                      color: yellow,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Login",
                            style: hExtra27(context, black),
                          ),
                          SizedBox(height: hh(context, 9)),
                          SvgPicture.asset(
                            "peep-09".getSvgImg,
                            height: hh(context, 287),
                          ),
                        ],
                      ),
                    ),
                    AuthAppbar(),
                  ],
                ),
              ),
              SizedBox(height: hh(context, 27)),
              Container(
                height: hh(context, 224),
                padding: all24(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SquareInput(
                          hintText: "2",
                        ),
                        SquareInput(
                          hintText: "_",
                        ),
                        SquareInput(
                          hintText: "_",
                        ),
                        SquareInput(
                          hintText: "_",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn’t get fav number? ",
                          style: displayMedium13(context, black),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Get new",
                            style: displayMedium13(context, red),
                          ),
                        ),
                      ],
                    ),
                    BorderedButton(
                      bgColor: black,
                      borderColor: black,
                      height: hh(context, 60),
                      onTap: () {},
                      title: Text(
                        "Verify",
                        style: displayExtraBold21(context, white),
                      ),
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

class SquareInput extends StatelessWidget {
  const SquareInput({
    Key? key,
    required this.hintText,
  }) : super(key: key);
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hh(context, 56),
      width: hh(context, 56),
      child: Center(
        child: TextField(
          style: display21(context, black),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: displayExtraBold24(context, black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(hh(context, 16)),
              borderSide: BorderSide(
                color: black,
                width: ww(context, 2),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ww(context, 16)),
              borderSide: BorderSide(
                color: black,
                width: ww(context, 2),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ww(context, 16)),
              borderSide: BorderSide(
                color: red,
                width: ww(context, 2),
              ),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: white,
      ),
    );
  }
}
