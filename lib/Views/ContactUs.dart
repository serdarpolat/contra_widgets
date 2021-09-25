import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

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
              SizedBox(height: hh(context, 12)),
              Container(
                width: w(context),
                height: hh(context, 176),
                padding: EdgeInsets.symmetric(
                    horizontal: ww(context, 24), vertical: hh(context, 32)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Us",
                      style: hExtra36(context, black),
                    ),
                    Spacer(),
                    Text(
                      "Wireframe is still important\nfor ideation. ",
                      style: displayMedium17(context, grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: hh(context, 8)),
              Padding(
                padding: horizontal24(context),
                child: InputField(
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
              ),
              SizedBox(height: hh(context, 24)),
              Padding(
                padding: horizontal24(context),
                child: Container(
                  height: hh(context, 131),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                          top: 12,
                          bottom: 8,
                          right: 8,
                        ),
                        child: SvgPicture.asset(
                          "mail".getIcon,
                          width: 24,
                          color: black,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          style: display21(context, black),
                          keyboardType: TextInputType.multiline,
                          maxLines: 8,
                          maxLength: 1000,
                          decoration: InputDecoration(
                            hintText: "Write your message",
                            hintStyle: display21(context, black),
                            border: InputBorder.none,
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(hh(context, 16)),
                    border: Border.all(
                      color: black,
                      width: ww(context, 2),
                    ),
                  ),
                ),
              ),
              SizedBox(height: hh(context, 24)),
              Padding(
                padding: horizontal24(context),
                child: BorderedButton(
                  bgColor: black,
                  borderColor: black,
                  height: hh(context, 60),
                  onTap: () {},
                  title: Row(
                    children: [
                      Text(
                        "Send Message",
                        style: displayExtraBold21(context, white),
                      ),
                      SvgPicture.asset(
                        "chevron-right".getIcon,
                        color: white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
