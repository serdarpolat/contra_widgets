import 'package:contra_widgets/src/Models/ChatBubbleModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:contra_widgets/src/Widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ChatBubbleView.dart';

class ChatDetails extends StatelessWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: white,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: horizontal24(context),
                child: Column(
                  children: [
                    SizedBox(height: hh(context, 142)),
                    ...List.generate(
                      messages.length,
                      (index) => ChatBubble(item: messages[index]),
                    ),
                    SizedBox(height: hh(context, 106)),
                  ],
                ),
              ),
            ),
            CustomAppbar(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              bordered: true,
              leading: CircleShadowButton(
                onTap: () {},
                child: SvgPicture.asset("cross".getIcon),
              ),
              title: Text(
                "Kerry",
                style: hExtra44(context, black),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: hh(context, 90),
                padding: EdgeInsets.symmetric(
                  horizontal: h24(context),
                  vertical: h16(context),
                ),
                child: Container(
                  padding: horizontal24(context),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Type your message",
                              hintStyle: displayMedium17(context, grey400),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 0,
                        color: grey100,
                        borderRadius: BorderRadius.circular(hh(context, 24)),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(hh(context, 24)),
                          child: Container(
                            width: hh(context, 24),
                            height: hh(context, 24),
                            child: SvgPicture.asset(
                              "mic".getIcon,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: ww(context, 16)),
                      Material(
                        elevation: 0,
                        color: grey100,
                        borderRadius: BorderRadius.circular(hh(context, 24)),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(hh(context, 24)),
                          child: Container(
                            width: hh(context, 24),
                            height: hh(context, 24),
                            child: SvgPicture.asset(
                              "send".getIcon,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  height: hh(context, 56),
                  decoration: BoxDecoration(
                    color: grey100,
                    borderRadius: BorderRadius.circular(ww(context, 56)),
                    border: Border.all(
                      color: black,
                      width: ww(context, 2),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    top: BorderSide(color: black, width: hh(context, 2)),
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
