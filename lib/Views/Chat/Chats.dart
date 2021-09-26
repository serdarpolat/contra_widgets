import 'package:contra_widgets/Views/Chat/ChatNavbar.dart';
import 'package:contra_widgets/src/Models/ChatItemModel.dart';
import 'package:contra_widgets/src/Models/ChatNavbarItemModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:contra_widgets/src/Widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ChatItemView.dart';
import 'ChatNavbarItemView.dart';

class Chats extends StatelessWidget {
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
                    ShadowedField(
                      hintText: "Search with love...",
                      suffix: Padding(
                        padding: EdgeInsets.only(right: 16, top: 10),
                        child: SvgPicture.asset(
                          "search".getIcon,
                          color: black,
                        ),
                      ),
                    ),
                    SizedBox(height: hh(context, 16)),
                    ...List.generate(chatItems.length,
                        (index) => ChatItem(item: chatItems[index])),
                    SizedBox(height: hh(context, 106)),
                  ],
                ),
              ),
            ),
            CustomAppbar(
              title: Text(
                "Chat",
                style: hExtra44(context, black),
              ),
            ),
            ChatNavbar(),
          ],
        ),
      ),
    );
  }
}
